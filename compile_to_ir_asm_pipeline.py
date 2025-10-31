"""
ComPile 데이터셋 기반 IR/Assembly 데이터셋 생성 파이프라인 (최적화 버전)
목표: 2-3B 토큰 (StarCoder 토크나이저 기준)

최적화 사항:
- 느린 스트리밍 대신 작은 로컬 샘플 다운로드
- C/C++ 필터링해서 처음부터 불필요한 데이터 스킵 안 함
- 명시적 샘플링으로 정확하게 0.01% 다운로드
"""

import os
import json
import subprocess
import tempfile
from pathlib import Path
from tqdm import tqdm
from datasets import load_dataset
from transformers import AutoTokenizer

# ===== 설정 =====
TARGET_TOKENS = 10_000_000  # 0.01B (10M) 토큰 목표 - 테스트용
OUTPUT_DIR = Path("./ir_asm_dataset")
CHECKPOINT_FILE = "checkpoint.json"

# 사용할 언어 (C/C++만)
LANGUAGES = ['C', 'C++']

# Clang 경로
CLANG_PATH = "clang"  # Windows: 전체 경로 지정 필요할 수 있음

# ===== 로컬 캐싱 설정 (중요!) =====
# 스트리밍 대신 작은 샘플을 로컬에 다운로드하여 빠르게 처리
USE_LOCAL_CACHE = True  # True면 로컬 다운로드, False면 스트리밍
DATASET_PERCENT = 0.01  # 전체의 0.01% 다운로드 (약 60MB)
                         # C/C++만 필터링하면 훨씬 더 작음


class ComPileToIRASMPipeline:
    def __init__(self):
        self.output_dir = OUTPUT_DIR
        self.ir_dir = self.output_dir / "llvm_ir"
        self.asm_dir = self.output_dir / "assembly"
        self.metadata_file = self.output_dir / "metadata.jsonl"
        
        # 디렉토리 생성
        self.ir_dir.mkdir(parents=True, exist_ok=True)
        self.asm_dir.mkdir(parents=True, exist_ok=True)
        
        # StarCoder 토크나이저 로드
        print("📦 StarCoder 토크나이저 로딩...")
        self.tokenizer = AutoTokenizer.from_pretrained("bigcode/starcoderbase-1b")
        
        # 통계
        self.stats = {
            "total_tokens": 0,
            "ir_tokens": 0,
            "asm_tokens": 0,
            "processed_files": 0,
            "success_files": 0,
            "failed_files": 0,
            "failed_reasons": {}
        }
        
        # 체크포인트 로드
        self.load_checkpoint()
    
    def load_checkpoint(self):
        """체크포인트 로드"""
        if Path(CHECKPOINT_FILE).exists():
            with open(CHECKPOINT_FILE, 'r') as f:
                checkpoint = json.load(f)
                self.stats = checkpoint.get("stats", self.stats)
                print(f"✓ 체크포인트 복원: {self.stats['processed_files']}개 파일 처리됨")
                print(f"  - 현재 토큰: {self.stats['total_tokens']:,}")
    
    def save_checkpoint(self):
        """체크포인트 저장"""
        with open(CHECKPOINT_FILE, 'w') as f:
            json.dump({"stats": self.stats}, f, indent=2)
    
    def bitcode_to_textual_ir(self, bitcode):
        """Bitcode를 텍스트 IR로 변환"""
        try:
            dis_command = ['llvm-dis', '-']
            with subprocess.Popen(
                dis_command,
                stdout=subprocess.PIPE,
                stderr=subprocess.PIPE,
                stdin=subprocess.PIPE
            ) as dis_process:
                output, error = dis_process.communicate(input=bitcode, timeout=10)
                
                if dis_process.returncode == 0:
                    return output.decode('utf-8', errors='ignore')
                else:
                    return None
        except Exception as e:
            return None
    
    def ir_to_assembly(self, ir_text):
        """텍스트 IR을 Assembly로 변환"""
        try:
            # 임시 파일에 IR 저장
            with tempfile.NamedTemporaryFile(mode='w', suffix='.ll', 
                                            delete=False, encoding='utf-8') as f:
                f.write(ir_text)
                ir_file = f.name
            
            asm_file = ir_file.replace('.ll', '.s')
            
            # clang -S input.ll -o output.s
            result = subprocess.run(
                [CLANG_PATH, '-S', ir_file, '-o', asm_file],
                capture_output=True,
                timeout=10,
                text=True
            )
            
            if result.returncode == 0 and Path(asm_file).exists():
                with open(asm_file, 'r', encoding='utf-8') as f:
                    asm_content = f.read()
                
                # 정리
                os.unlink(ir_file)
                os.unlink(asm_file)
                return asm_content
            else:
                if Path(ir_file).exists():
                    os.unlink(ir_file)
                if Path(asm_file).exists():
                    os.unlink(asm_file)
                return None
                
        except Exception as e:
            return None
    
    def count_tokens(self, text):
        """StarCoder 토크나이저로 토큰 수 계산"""
        try:
            tokens = self.tokenizer.encode(text, add_special_tokens=False)
            return len(tokens)
        except:
            # 폴백: 단순 추정
            return len(text.split())
    
    def process_single_file(self, row):
        """단일 파일 처리"""
        try:
            # 1. Bitcode → Textual IR
            bitcode = row['content']
            ir_text = self.bitcode_to_textual_ir(bitcode)
            
            if not ir_text or len(ir_text) < 50:
                self.stats['failed_reasons']['bitcode_conversion'] = \
                    self.stats['failed_reasons'].get('bitcode_conversion', 0) + 1
                return False
            
            # 2. IR → Assembly
            asm_text = self.ir_to_assembly(ir_text)
            
            if not asm_text or len(asm_text) < 50:
                self.stats['failed_reasons']['ir_to_asm'] = \
                    self.stats['failed_reasons'].get('ir_to_asm', 0) + 1
                return False
            
            # 3. 파일 저장
            file_id = f"{self.stats['success_files']:08d}"
            
            ir_path = self.ir_dir / f"{file_id}.ll"
            with open(ir_path, 'w', encoding='utf-8') as f:
                f.write(ir_text)
            
            asm_path = self.asm_dir / f"{file_id}.s"
            with open(asm_path, 'w', encoding='utf-8') as f:
                f.write(asm_text)
            
            # 4. 토큰 수 계산
            ir_tokens = self.count_tokens(ir_text)
            asm_tokens = self.count_tokens(asm_text)
            
            # 5. 메타데이터 저장
            metadata = {
                "file_id": file_id,
                "language": row.get('language', 'unknown'),
                "ir_tokens": ir_tokens,
                "asm_tokens": asm_tokens,
                "total_tokens": ir_tokens + asm_tokens,
                "ir_path": str(ir_path),
                "asm_path": str(asm_path),
                "license": row.get('license_expression', 'unknown')
            }
            
            with open(self.metadata_file, 'a', encoding='utf-8') as f:
                f.write(json.dumps(metadata) + '\n')
            
            # 6. 통계 업데이트
            self.stats['ir_tokens'] += ir_tokens
            self.stats['asm_tokens'] += asm_tokens
            self.stats['total_tokens'] = self.stats['ir_tokens'] + self.stats['asm_tokens']
            self.stats['success_files'] += 1
            
            return True
            
        except Exception as e:
            self.stats['failed_reasons']['exception'] = \
                self.stats['failed_reasons'].get('exception', 0) + 1
            return False
    
    def run(self):
        """메인 파이프라인 실행"""
        print("=" * 70)
        print("ComPile 기반 IR/Assembly 데이터셋 생성 (최적화 버전)")
        print(f"목표: {TARGET_TOKENS:,} 토큰 (StarCoder 토크나이저)")
        print("=" * 70)
        
        # Clang 체크
        try:
            result = subprocess.run([CLANG_PATH, '--version'], 
                                  capture_output=True, text=True, timeout=5)
            clang_version = result.stdout.split('\n')[0]
            print(f"✓ Clang 발견: {clang_version}")
        except:
            print("❌ Clang을 찾을 수 없습니다!")
            print("설치 방법: https://releases.llvm.org/download.html")
            return
        
        # llvm-dis 체크
        try:
            result = subprocess.run(['llvm-dis', '--version'], 
                                  capture_output=True, text=True, timeout=5)
            print(f"✓ llvm-dis 발견")
        except:
            print("❌ llvm-dis를 찾을 수 없습니다!")
            print("llvm-dis는 LLVM 설치 시 포함됩니다.")
            return
        
        # ComPile 데이터셋 로드
        print("\n📥 ComPile 데이터셋 로드 중...")
        
        if USE_LOCAL_CACHE:
            # 옵션 1: 로컬에 작은 샘플 다운로드 (추천)
            print(f"  - 방식: 로컬 다운로드 ({DATASET_PERCENT*100}%)")
            print(f"  - 약 {600 * DATASET_PERCENT*100:.0f}MB 다운로드 예상")
            print("  ⏳ 첫 로드는 시간이 걸릴 수 있습니다 (다음부터는 캐시 사용)...\n")
            
            # 전체 데이터셋 로드
            print("  → 전체 데이터셋 로드 중...")
            ds = load_dataset('llvm-ml/ComPile', split='train')
            print(f"  ✓ 로드 완료: {len(ds):,}개 파일")
            
            # C/C++만 필터링
            print(f"🔍 필터링: {', '.join(LANGUAGES)}")
            ds = ds.filter(lambda x: x['language'] in LANGUAGES)
            print(f"✓ 필터링 완료 ({len(ds):,}개 파일)\n")
            
            # 명시적으로 샘플 선택
            print(f"📊 {DATASET_PERCENT*100}% 샘플링 중...")
            sample_size = max(1, int(len(ds) * DATASET_PERCENT))
            ds = ds.select(range(sample_size))
            print(f"✓ {sample_size:,}개 파일 선택됨\n")
        else:
            # 옵션 2: 스트리밍 (느림, 비추천)
            print(f"  - 방식: 스트리밍")
            print("  ⚠️  이 방식은 느리니 USE_LOCAL_CACHE=True 추천\n")
            
            ds = load_dataset('llvm-ml/ComPile', split='train', streaming=True)
            
            # C/C++만 필터링
            print(f"🔍 필터링: {', '.join(LANGUAGES)}")
            ds = ds.filter(lambda x: x['language'] in LANGUAGES)
            print(f"✓ 필터링 완료\n")
        
        # 진행률 바
        pbar = tqdm(total=TARGET_TOKENS, unit='tokens', 
                   desc="진행", unit_scale=True)
        pbar.update(self.stats['total_tokens'])
        
        # 처리 시작
        print("🚀 처리 시작...\n")
        
        for row in ds:
            if self.stats['total_tokens'] >= TARGET_TOKENS:
                print("\n✅ 목표 토큰 도달!")
                break
            
            self.stats['processed_files'] += 1
            
            success = self.process_single_file(row)
            
            if success:
                # 진행률 업데이트
                token_increase = self.stats['total_tokens'] - pbar.n
                pbar.update(token_increase)
                pbar.set_postfix({
                    'Success': self.stats['success_files'],
                    'Fail': self.stats['failed_files'],
                    'Rate': f"{self.stats['success_files']*100/(self.stats['processed_files'] or 1):.1f}%"
                })
                # 콘솔에도 출력 (백그라운드용)
                if self.stats['success_files'] % 10 == 0:
                    print(f"\n[{self.stats['success_files']}] 토큰: {self.stats['total_tokens']:,} | 성공률: {self.stats['success_files']*100/(self.stats['processed_files'] or 1):.1f}%")
            else:
                self.stats['failed_files'] += 1
            
            # 100개마다 체크포인트 저장
            if self.stats['processed_files'] % 100 == 0:
                self.save_checkpoint()
        
        pbar.close()
        
        # 최종 통계
        self.print_final_stats()
        self.save_checkpoint()
    
    def print_final_stats(self):
        """최종 통계 출력"""
        print("\n" + "=" * 70)
        print("완료!")
        print("=" * 70)
        print(f"처리된 파일:      {self.stats['processed_files']:,}")
        print(f"성공:            {self.stats['success_files']:,}")
        print(f"실패:            {self.stats['failed_files']:,}")
        print(f"성공률:          {self.stats['success_files']*100/(self.stats['processed_files'] or 1):.1f}%")
        
        print(f"\n토큰 수 (StarCoder 토크나이저):")
        print(f"  IR 토큰:       {self.stats['ir_tokens']:,}")
        print(f"  ASM 토큰:      {self.stats['asm_tokens']:,}")
        print(f"  총 토큰:       {self.stats['total_tokens']:,}")
        
        print(f"\n실패 원인:")
        for reason, count in self.stats['failed_reasons'].items():
            print(f"  {reason}: {count:,}")
        
        print(f"\n출력 디렉토리:   {self.output_dir}")
        print(f"  - IR:          {self.ir_dir}")
        print(f"  - Assembly:    {self.asm_dir}")
        print(f"  - Metadata:    {self.metadata_file}")


def main():
    """메인 함수"""
    pipeline = ComPileToIRASMPipeline()
    pipeline.run()


if __name__ == "__main__":
    main()