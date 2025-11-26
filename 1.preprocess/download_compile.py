import os
import json
from pathlib import Path
from tqdm import tqdm
from datasets import load_dataset


os.environ['HF_HOME'] = '/Volumes/My Passport for Mac/cache/huggingface'

OUTPUT_DIR = Path("/Volumes/My Passport for Mac/ir_asm_dataset")

# ===== 설정 =====
# 배치 설정 (20개 배치로 나눔, 매 배치마다 5% 데이터)
NUM_BATCHES = 20
CURRENT_BATCH = 0  # 0~19

# 사용할 언어 (모든 언어)
LANGUAGES = ['C', 'C++', 'Julia', 'Rust', 'Swift']

# ===== 로컬 캐싱 설정 =====
USE_LOCAL_CACHE = True


def download_compile_dataset():
    """ComPile 데이터셋 다운로드"""
    print("=" * 70)
    print("ComPile 데이터셋 다운로드")
    print(f"배치: {CURRENT_BATCH + 1}/{NUM_BATCHES}")
    print("=" * 70)
    
    # 출력 디렉토리 생성
    OUTPUT_DIR.mkdir(parents=True, exist_ok=True)
    
    # ComPile 데이터셋 로드
    print("\n📥 ComPile 데이터셋 로드 중...")
    
    if USE_LOCAL_CACHE:
        # 배치 기반 데이터 로드
        batch_start = CURRENT_BATCH * (100 // NUM_BATCHES)
        batch_end = (CURRENT_BATCH + 1) * (100 // NUM_BATCHES)
        
        print(f"  - 배치: {CURRENT_BATCH + 1}/{NUM_BATCHES}")
        print(f"  - 범위: {batch_start}% ~ {batch_end}%")
        print("  ⏳ 첫 로드는 시간이 걸릴 수 있습니다 (다음부터는 캐시 사용)...\n")
        
        # 배치 범위의 데이터셋 로드
        print(f"  → 데이터셋 로드 중 ({batch_start}%:{batch_end}%)...")
        ds = load_dataset('llvm-ml/ComPile', split=f'train[{batch_start}%:{batch_end}%]')
        print(f"  ✓ 로드 완료: {len(ds):,}개 파일")
        print(f"🔍 모든 언어 포함: {', '.join(LANGUAGES)}\n")
        
        return ds
    else:
        # 스트리밍 방식
        print(f"  - 방식: 스트리밍")
        print("  ⚠️  이 방식은 느리니 USE_LOCAL_CACHE=True 추천\n")
        
        ds = load_dataset('llvm-ml/ComPile', split='train', streaming=True)
        print(f"✓ 모든 언어 포함\n")
        
        return ds


def main():
    """메인 함수"""
    dataset = download_compile_dataset()
    print(f"\n✅ 다운로드 완료!")
    print(f"캐시 위치: {os.environ['HF_HOME']}")
    print(f"출력 디렉토리: {OUTPUT_DIR}")


if __name__ == "__main__":
    main()