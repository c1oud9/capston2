"""
Pretraining 20B 정확 분할
IR 10B + ASM 10B
"""

import json
import random
from pathlib import Path

def load_all_metadata():
    base_dir = Path(".")
    parquet_dirs = sorted([d for d in base_dir.glob("test_parquet_*") if d.is_dir()])
    
    all_samples = []
    for parquet_dir in parquet_dirs:
        metadata_file = parquet_dir / "metadata.jsonl"
        if not metadata_file.exists():
            continue
        
        with open(metadata_file, 'r') as f:
            for line in f:
                data = json.loads(line)
                data['parquet'] = parquet_dir.name
                all_samples.append(data)
    
    return all_samples

def main():
    random.seed(42)
    
    print("=" * 70)
    print("Pretraining 20B 데이터셋 분할")
    print("=" * 70)
    
    all_samples = load_all_metadata()
    random.shuffle(all_samples)
    
    total_ir = sum(s['ir_tokens'] for s in all_samples)
    total_asm = sum(s['asm_tokens'] for s in all_samples)
    
    print(f"\n📥 전체: {len(all_samples):,}개")
    print(f"  IR:  {total_ir/1e9:.2f}B")
    print(f"  ASM: {total_asm/1e9:.2f}B")
    print(f"  합계: {(total_ir + total_asm)/1e9:.2f}B")
    
    # IR 10B 수집
    print(f"\n🎯 IR 데이터 수집 (목표: 10B)")
    pretrain_ir = []
    ir_tokens = 0
    ir_target = 10_000_000_000
    idx = 0
    
    while ir_tokens < ir_target and idx < len(all_samples):
        sample = all_samples[idx]
        pretrain_ir.append(sample)
        ir_tokens += sample['ir_tokens']
        idx += 1
    
    ir_end_idx = idx
    
    print(f"  ✓ {ir_tokens:,} 토큰 ({ir_tokens/1e9:.2f}B)")
    print(f"  ✓ {len(pretrain_ir):,}개 샘플 (idx 0-{ir_end_idx})")
    
    # ASM 10B 수집
    print(f"\n🎯 ASM 데이터 수집 (목표: 10B)")
    pretrain_asm = []
    asm_tokens = 0
    asm_target = 10_000_000_000
    
    while asm_tokens < asm_target and idx < len(all_samples):
        sample = all_samples[idx]
        pretrain_asm.append(sample)
        asm_tokens += sample['asm_tokens']
        idx += 1
    
    asm_end_idx = idx
    
    print(f"  ✓ {asm_tokens:,} 토큰 ({asm_tokens/1e9:.2f}B)")
    print(f"  ✓ {len(pretrain_asm):,}개 샘플 (idx {ir_end_idx}-{asm_end_idx})")
    
    # 통계
    print(f"\n📊 Pretraining 데이터셋:")
    print(f"  IR:  {ir_tokens:,} ({ir_tokens/1e9:.2f}B)")
    print(f"  ASM: {asm_tokens:,} ({asm_tokens/1e9:.2f}B)")
    print(f"  합계: {ir_tokens + asm_tokens:,} ({(ir_tokens + asm_tokens)/1e9:.2f}B)")
    print(f"  총 샘플: {len(pretrain_ir) + len(pretrain_asm):,}개")
    print(f"  사용 인덱스: 0-{asm_end_idx} / {len(all_samples)}")
    
    remaining = len(all_samples) - asm_end_idx
    remaining_tokens = sum(s['total_tokens'] for s in all_samples[asm_end_idx:])
    print(f"\n📦 남은 데이터:")
    print(f"  샘플: {remaining:,}개")
    print(f"  토큰: {remaining_tokens:,} ({remaining_tokens/1e9:.2f}B)")
    
    # 저장
    output_dir = Path("pretraining_data")
    output_dir.mkdir(exist_ok=True)
    
    # IR 샘플 리스트
    with open(output_dir / "ir_samples.jsonl", 'w') as f:
        for sample in pretrain_ir:
            f.write(json.dumps({
                'file_id': sample['file_id'],
                'ir_path': sample['ir_path'],
                'tokens': sample['ir_tokens'],
                'parquet': sample['parquet']
            }) + '\n')
    
    # ASM 샘플 리스트
    with open(output_dir / "asm_samples.jsonl", 'w') as f:
        for sample in pretrain_asm:
            f.write(json.dumps({
                'file_id': sample['file_id'],
                'asm_path': sample['asm_path'],
                'tokens': sample['asm_tokens'],
                'parquet': sample['parquet']
            }) + '\n')
    
    # 통계
    with open(output_dir / "stats.json", 'w') as f:
        json.dump({
            'ir_tokens': ir_tokens,
            'ir_samples': len(pretrain_ir),
            'asm_tokens': asm_tokens,
            'asm_samples': len(pretrain_asm),
            'total_tokens': ir_tokens + asm_tokens,
            'total_samples': len(pretrain_ir) + len(pretrain_asm),
            'used_indices': f"0-{asm_end_idx}",
            'remaining_samples': remaining,
            'remaining_tokens': remaining_tokens
        }, f, indent=2)
    
    # 나중 사용을 위해 남은 샘플 인덱스 저장
    with open(output_dir / "remaining_indices.json", 'w') as f:
        json.dump({
            'start_idx': asm_end_idx,
            'end_idx': len(all_samples),
            'count': remaining
        }, f, indent=2)
    
    print(f"\n✓ 저장 완료: pretraining_data/")
    print(f"  - ir_samples.jsonl ({len(pretrain_ir):,}개)")
    print(f"  - asm_samples.jsonl ({len(pretrain_asm):,}개)")
    print(f"  - stats.json")
    print(f"  - remaining_indices.json")
    print("=" * 70)

if __name__ == "__main__":
    main()