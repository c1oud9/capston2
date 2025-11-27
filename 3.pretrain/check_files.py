import json
from pathlib import Path

# 1. Pretraining으로 이동한 데이터 확인
pretrain_dir = Path("./pretraining_data")

with open(pretrain_dir / "stats.json") as f:
    pretrain_stats = json.load(f)
    
print("📦 Pretraining으로 이동한 데이터:")
print(json.dumps(pretrain_stats, indent=2))

# 2. 남은 인덱스 확인
with open(pretrain_dir / "remaining_indices.json") as f:
    remaining = json.load(f)
    
print(f"\n📊 남은 데이터:")
print(f"총 {sum(len(v) for v in remaining.values())}개 샘플")

# 3. IR/ASM 샘플 개수
ir_samples = sum(1 for _ in open(pretrain_dir / "ir_samples.jsonl"))
asm_samples = sum(1 for _ in open(pretrain_dir / "asm_samples.jsonl"))

print(f"\n🔢 샘플 개수:")
print(f"IR:  {ir_samples:,}개")
print(f"ASM: {asm_samples:,}개")
print(f"합계: {ir_samples + asm_samples:,}개")
