"""
ComPile 파이프라인 테스트
5개 샘플로 Bitcode → IR → ASM 변환 및 토큰 계산 테스트
"""

import subprocess
import tempfile
import os
from pathlib import Path
from datasets import load_dataset
from transformers import AutoTokenizer

print("=" * 70)
print("ComPile 파이프라인 테스트 (5개 샘플)")
print("=" * 70)

# 1. 필요한 도구 체크
print("\n🔧 필수 도구 확인:")
try:
    result = subprocess.run(['clang', '--version'], capture_output=True, text=True, timeout=5)
    print(f"  ✓ Clang: {result.stdout.split(chr(10))[0]}")
except:
    print("  ❌ Clang 없음")
    exit(1)

try:
    result = subprocess.run(['llvm-dis', '--version'], capture_output=True, text=True, timeout=5)
    print(f"  ✓ llvm-dis 설치됨")
except:
    print("  ❌ llvm-dis 없음")
    exit(1)

# 2. 토크나이저 로드
print("\n📦 토크나이저 로드:")
tokenizer = AutoTokenizer.from_pretrained("bigcode/starcoderbase-1b")
print(f"  ✓ StarCoder 토크나이저 로드 완료")

# 3. 데이터셋 로드 및 필터링 (스트리밍으로 빠르게)
print("\n📥 데이터셋 로드 (C/C++ 만, 스트리밍):")
print("  - 스트리밍 모드로 필요한 것만 받기...")

ds = load_dataset('llvm-ml/ComPile', split='train', streaming=True)

ds = ds.filter(lambda x: x['language'] in ['C', 'C++'])

# 4. 5개 샘플만 가져오기
print(f"  ✓ 처음 5개 C/C++ 샘플 수집 중...")
ds_sample = []
for i, row in enumerate(ds):
    if i >= 5:
        break
    ds_sample.append(row)
    print(f"    - 샘플 {i+1} 수집 완료")

print(f"  ✓ 테스트용 {len(ds_sample)}개 샘플 준비 완료")

# 5. 변환 함수들
def bitcode_to_ir(bitcode):
    """Bitcode → Textual IR"""
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
            return None
    except:
        return None

def ir_to_asm(ir_text):
    """IR → Assembly"""
    try:
        with tempfile.NamedTemporaryFile(mode='w', suffix='.ll', delete=False, encoding='utf-8') as f:
            f.write(ir_text)
            ir_file = f.name
        
        asm_file = ir_file.replace('.ll', '.s')
        
        result = subprocess.run(
            ['clang', '-S', ir_file, '-o', asm_file],
            capture_output=True,
            timeout=10,
            text=True
        )
        
        if result.returncode == 0 and Path(asm_file).exists():
            with open(asm_file, 'r', encoding='utf-8') as f:
                asm_content = f.read()
            
            os.unlink(ir_file)
            os.unlink(asm_file)
            return asm_content
        else:
            if Path(ir_file).exists():
                os.unlink(ir_file)
            if Path(asm_file).exists():
                os.unlink(asm_file)
            return None
    except:
        return None

def count_tokens(text):
    """토큰 수 계산"""
    try:
        tokens = tokenizer.encode(text, add_special_tokens=False)
        return len(tokens)
    except:
        return len(text.split())

# 6. 테스트 실행
print("\n" + "=" * 70)
print("테스트 실행:")
print("=" * 70)

results = []
for i, row in enumerate(ds_sample, 1):
    print(f"\n[샘플 {i}] 언어: {row['language']}")
    
    # Bitcode → IR
    print("  1️⃣  Bitcode → IR 변환...", end=" ")
    ir_text = bitcode_to_ir(row['content'])
    
    if not ir_text:
        print("❌ 실패")
        continue
    
    ir_size = len(ir_text)
    ir_tokens = count_tokens(ir_text)
    print(f"✓ ({ir_size:,} bytes, {ir_tokens:,} tokens)")
    
    # IR → ASM
    print("  2️⃣  IR → Assembly 변환...", end=" ")
    asm_text = ir_to_asm(ir_text)
    
    if not asm_text:
        print("❌ 실패")
        continue
    
    asm_size = len(asm_text)
    asm_tokens = count_tokens(asm_text)
    print(f"✓ ({asm_size:,} bytes, {asm_tokens:,} tokens)")
    
    total_tokens = ir_tokens + asm_tokens
    
    # 결과 저장
    results.append({
        'sample': i,
        'language': row['language'],
        'ir_size': ir_size,
        'ir_tokens': ir_tokens,
        'asm_size': asm_size,
        'asm_tokens': asm_tokens,
        'total_tokens': total_tokens
    })
    
    print(f"  📊 합계: {total_tokens:,} tokens")

# 7. 최종 통계
print("\n" + "=" * 70)
print("테스트 결과:")
print("=" * 70)

if results:
    print(f"\n✅ 성공: {len(results)}/5 샘플\n")
    
    print("상세 결과:")
    print("-" * 70)
    print(f"{'샘플':<6} {'언어':<8} {'IR Tokens':<12} {'ASM Tokens':<12} {'Total':<12}")
    print("-" * 70)
    
    total_ir_tokens = 0
    total_asm_tokens = 0
    total_all_tokens = 0
    
    for r in results:
        print(f"{r['sample']:<6} {r['language']:<8} {r['ir_tokens']:<12,} {r['asm_tokens']:<12,} {r['total_tokens']:<12,}")
        total_ir_tokens += r['ir_tokens']
        total_asm_tokens += r['asm_tokens']
        total_all_tokens += r['total_tokens']
    
    print("-" * 70)
    print(f"{'합계':<6} {'':<8} {total_ir_tokens:<12,} {total_asm_tokens:<12,} {total_all_tokens:<12,}")
    print("-" * 70)
    
    print(f"\n🎯 5개 샘플 총 토큰: {total_all_tokens:,}")
    print(f"   - IR: {total_ir_tokens:,}")
    print(f"   - ASM: {total_asm_tokens:,}")
    print(f"\n💡 평균 토큰 per 샘플: {total_all_tokens / len(results):,.0f}")
else:
    print("❌ 모든 샘플이 실패했습니다.")