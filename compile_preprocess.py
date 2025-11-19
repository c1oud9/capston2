"""
ComPile 데이터셋의 단일 parquet 파일 테스트
한 개 parquet 파일 → IR/Assembly/토큰 생성
각 parquet은 별도 폴더에 저장 (덮어쓰기 방지)
"""

import os
import sys
import json
import subprocess
import tempfile
import pandas as pd
from pathlib import Path
from transformers import AutoTokenizer
from tqdm import tqdm

# 환경 설정
os.environ['HF_HOME'] = '/Volumes/My Passport for Mac/cache/huggingface'
os.environ['TOKENIZERS_PARALLELISM'] = 'false'

# 설정
PARQUET_DIR = Path("/Volumes/My Passport for Mac/cache/huggingface/hub/datasets--llvm-ml--ComPile/blobs")
CLANG_PATH = "/usr/local/opt/llvm/bin/clang"


class SingleParquetProcessor:
    def __init__(self, parquet_index=0):
        self.parquet_index = parquet_index
        
        # 각 parquet별로 다른 폴더에 저장
        self.base_dir = Path(f"./test_parquet_{parquet_index}")
        self.base_dir.mkdir(parents=True, exist_ok=True)
        
        self.ir_dir = self.base_dir / "ir"
        self.asm_dir = self.base_dir / "asm"
        self.metadata_file = self.base_dir / "metadata.jsonl"
        
        self.ir_dir.mkdir(exist_ok=True)
        self.asm_dir.mkdir(exist_ok=True)
        
        print("📦 StarCoder 토크나이저 로딩...")
        self.tokenizer = AutoTokenizer.from_pretrained("bigcode/starcoderbase-1b")
        
        self.stats = {
            "total_tokens": 0,
            "ir_tokens": 0,
            "asm_tokens": 0,
            "processed_files": 0,
            "success_files": 0,
            "failed_files": 0,
            "failed_reasons": {}
        }
    
    def bitcode_to_textual_ir(self, bitcode):
        """Bitcode → 텍스트 IR"""
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
    
    def ir_to_assembly(self, ir_text, debug=False):
        """IR → Assembly"""
        try:
            with tempfile.NamedTemporaryFile(mode='w', suffix='.ll', 
                                            delete=False, encoding='utf-8') as f:
                f.write(ir_text)
                ir_file = f.name
            
            asm_file = ir_file.replace('.ll', '.s')
            
            if debug:
                print(f"\n🔍 Debug Info:")
                print(f"   IR file: {ir_file}")
                print(f"   ASM file: {asm_file}")
                print(f"   IR exists: {Path(ir_file).exists()}")
            
            result = subprocess.run(
                [CLANG_PATH, '-S', '-target', 'x86_64-unknown-linux-gnu', ir_file, '-o', asm_file],
                capture_output=True,
                timeout=10,
                text=True
            )
            
            if debug:
                print(f"   Return code: {result.returncode}")
                print(f"   ASM exists after run: {Path(asm_file).exists()}")
                if result.stderr:
                    print(f"   STDERR: {result.stderr[:500]}")
            
            if Path(asm_file).exists():
                with open(asm_file, 'r', encoding='utf-8') as f:
                    asm_content = f.read()
                
                if debug:
                    print(f"   ASM size: {len(asm_content)} bytes")
                
                os.unlink(ir_file)
                os.unlink(asm_file)
                return asm_content
            else:
                if debug:
                    print(f"   ❌ ASM file not found!")
                if Path(ir_file).exists():
                    os.unlink(ir_file)
                return None
                
        except Exception as e:
            if debug:
                print(f"\n❌ Exception: {e}")
            return None
    
    def count_tokens(self, text):
        """토큰 수 계산"""
        try:
            tokens = self.tokenizer.encode(text, add_special_tokens=False)
            return len(tokens)
        except:
            return len(text.split())
    
    def process_single_file(self, row, file_id, debug_first_fail=False):
        """단일 파일 처리"""
        try:
            # 1. Bitcode → IR
            bitcode = row['content']
            ir_text = self.bitcode_to_textual_ir(bitcode)
            
            if not ir_text or len(ir_text) < 50:
                self.stats['failed_reasons']['bitcode_conversion'] = \
                    self.stats['failed_reasons'].get('bitcode_conversion', 0) + 1
                return False
            
            # 2. IR → Assembly
            asm_text = self.ir_to_assembly(ir_text, debug=debug_first_fail)
            
            if not asm_text or len(asm_text) < 50:
                self.stats['failed_reasons']['ir_to_asm'] = \
                    self.stats['failed_reasons'].get('ir_to_asm', 0) + 1
                return False
            
            # 3. 파일 저장
            file_id_str = f"{file_id:06d}"
            
            ir_path = self.ir_dir / f"{file_id_str}.ll"
            with open(ir_path, 'w', encoding='utf-8') as f:
                f.write(ir_text)
            
            asm_path = self.asm_dir / f"{file_id_str}.s"
            with open(asm_path, 'w', encoding='utf-8') as f:
                f.write(asm_text)
            
            # 4. 토큰 수 계산
            ir_tokens = self.count_tokens(ir_text)
            asm_tokens = self.count_tokens(asm_text)
            
            # 5. 메타데이터 저장
            metadata = {
                "file_id": file_id_str,
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
        """메인 실행"""
        print("=" * 70)
        print("단일 Parquet 파일 테스트")
        print(f"Parquet 인덱스: {self.parquet_index}")
        print(f"출력 폴더: {self.base_dir}")
        print("=" * 70)
        
        # Clang/llvm-dis 체크
        try:
            subprocess.run([CLANG_PATH, '--version'], 
                          capture_output=True, text=True, timeout=5)
            print(f"✓ Clang 발견")
        except:
            print("❌ Clang을 찾을 수 없습니다!")
            return
        
        try:
            subprocess.run(['llvm-dis', '--version'], 
                          capture_output=True, text=True, timeout=5)
            print(f"✓ llvm-dis 발견\n")
        except:
            print("❌ llvm-dis를 찾을 수 없습니다!")
            return
        
        # Parquet 파일 찾기 (정렬된 순서)
        blob_files = sorted([f for f in PARQUET_DIR.glob("*") if f.is_file() and not f.name.startswith('.')])
        
        if not blob_files:
            print("❌ blob 파일을 찾을 수 없습니다!")
            print(f"경로: {PARQUET_DIR}")
            return
        
        if self.parquet_index >= len(blob_files):
            print(f"❌ 인덱스 {self.parquet_index}는 범위를 벗어났습니다!")
            print(f"   총 파일 수: {len(blob_files)}")
            return
        
        parquet_file = blob_files[self.parquet_index]
        print(f"📥 Parquet 파일 로드 (인덱스 {self.parquet_index}): {parquet_file.name}")
        print(f"   경로: {parquet_file}")
        
        # Parquet 파일 읽기
        try:
            df = pd.read_parquet(parquet_file)
            print(f"✓ 로드 완료: {len(df):,}개 샘플\n")
        except Exception as e:
            print(f"❌ Parquet 파일 읽기 실패: {e}")
            return
        
        # 처리
        print(f"🚀 처리 시작...\n")
        
        pbar = tqdm(total=len(df), desc="진행", unit="files")
        
        for idx, (_, row) in enumerate(df.iterrows()):
            self.stats['processed_files'] += 1
            
            success = self.process_single_file(row, idx, debug_first_fail=(idx < 10))
            
            if success:
                pbar.update(1)
                pbar.set_postfix({
                    'Success': self.stats['success_files'],
                    'Fail': self.stats['failed_files'],
                    'Tokens': f"{self.stats['total_tokens']:,}"
                })
            else:
                self.stats['failed_files'] += 1
                pbar.update(1)
        
        pbar.close()
        
        # 최종 통계
        self.print_final_stats()
    
    def print_final_stats(self):
        """최종 통계"""
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
        
        print(f"\n출력 디렉토리:   {self.base_dir}")
        print(f"  - IR:          {self.ir_dir}")
        print(f"  - Assembly:    {self.asm_dir}")
        print(f"  - Metadata:    {self.metadata_file}")


if __name__ == "__main__":
    # 커맨드라인 인자로 parquet 인덱스 받기
    parquet_index = int(sys.argv[1]) if len(sys.argv) > 1 else 0
    
    processor = SingleParquetProcessor(parquet_index=parquet_index)
    processor.run()