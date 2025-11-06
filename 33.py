"""
ComPile 데이터셋의 단일 parquet 파일 테스트
한 개 parquet 파일 → IR/Assembly/토큰 생성
"""

import os
import json
import subprocess
import tempfile
import pandas as pd
from pathlib import Path
from transformers import AutoTokenizer
from tqdm import tqdm
import sys

# 환경 설정
os.environ['HF_HOME'] = '/Volumes/My Passport for Mac/cache/huggingface'

os.environ['TOKENIZERS_PARALLELISM'] = 'false'
# 설정
PARQUET_DIR = Path("/Volumes/My Passport for Mac/cache/huggingface/hub/datasets--llvm-ml--ComPile/blobs")
OUTPUT_DIR = Path("./test_single_parquet_output")
CLANG_PATH = "clang"

# 출력 디렉토리 생성
OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
IR_DIR = OUTPUT_DIR / "ir"
ASM_DIR = OUTPUT_DIR / "asm"
IR_DIR.mkdir(exist_ok=True)
ASM_DIR.mkdir(exist_ok=True)


class SingleParquetProcessor:
    def __init__(self):
        self.ir_dir = IR_DIR
        self.asm_dir = ASM_DIR
        self.metadata_file = OUTPUT_DIR / "metadata.jsonl"

        self.parquet_index = int(sys.argv[1]) if len(sys.argv) > 1 else 0
        
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
<<<<<<< HEAD
                [CLANG_PATH, '-S', '-target', 'x86_64-unknown-linux-gnu',ir_file, '-o', asm_file],
=======
                [CLANG_PATH, '-S', ir_file, '-o', asm_file],
>>>>>>> 8658184119bfd78f3162d0ca933022bc6eb3cd47
                capture_output=True,
                timeout=10,
                text=True
            )

            if debug:
                print(f"   Return code: {result.returncode}")
                print(f"   ASM exists after run: {Path(asm_file).exists()}")
<<<<<<< HEAD
                if result.stderr:
                     print(f"   STDERR: {result.stderr[:500]}") 
=======
>>>>>>> 8658184119bfd78f3162d0ca933022bc6eb3cd47

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
    
    def process_single_file(self, row, file_id, debug_first_fail=True):
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
        
        # 첫 번째 blob 파일 찾기 (해시값으로 저장됨)
        blob_files = [f for f in PARQUET_DIR.glob("*") if f.is_file() and not f.name.startswith('.')]
        
        if not blob_files:
            print("❌ blob 파일을 찾을 수 없습니다!")
            print(f"경로: {PARQUET_DIR}")
            return
        
        parquet_file = blob_files[self.parquet_index]
        print(f"📥 Parquet 파일 로드: {parquet_file.name}")
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
            
            success = self.process_single_file(row, idx)
            
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
        
        print(f"\n출력 디렉토리:   {OUTPUT_DIR}")
        print(f"  - IR:          {self.ir_dir}")
        print(f"  - Assembly:    {self.asm_dir}")
        print(f"  - Metadata:    {self.metadata_file}")


if __name__ == "__main__":
    processor = SingleParquetProcessor()
    processor.run()