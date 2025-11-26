"""
토큰 기반 정확한 분할
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
    print("데이터셋 분할 - 토큰 기반 정확 할당")
    print("=" * 70)
    
    all_samples = load_all_metadata()
    random.shuffle(all_samples)
    
    total_ir = sum(s['ir_tokens'] for s in all_samples)
    total_asm = sum(s['asm_tokens'] for s in all_samples)
    
    print(f"\n📥 총 샘플: {len(all_samples):,}개")
    print(f"  IR:  {total_ir:,} ({total_ir/1e9:.2f}B)")
    print(f"  ASM: {total_asm:,} ({total_asm/1e9:.2f}B)")
    
    # Stage 1: Pretraining (IR 10B + ASM 10B)
    print(f"\n🎯 Stage 1: Pretraining (IR 10B + ASM 10B)")
    
    # IR용 샘플 수집 (10B까지)
    pretrain_ir = []
    ir_tokens = 0
    idx = 0
    
    while ir_tokens < 10_000_000_000 and idx < len(all_samples):
        sample = all_samples[idx]
        pretrain_ir.append({
            'sample': sample,
            'use_type': 'ir',
            'tokens': sample['ir_tokens']
        })
        ir_tokens += sample['ir_tokens']
        idx += 1
    
    # ASM용 샘플 수집 (10B까지)
    pretrain_asm = []
    asm_tokens = 0
    
    # IR:ASM 비율 맞추기 위해 더 많은 샘플 필요
    # ASM 토큰이 IR보다 많으므로 같은 개수로 10B 채우기 어려움
    # 해결: 추가 샘플 사용
    while asm_tokens < 10_000_000_000 and idx < len(all_samples):
        sample = all_samples[idx]
        pretrain_asm.append({
            'sample': sample,
            'use_type': 'asm',
            'tokens': sample['asm_tokens']
        })
        asm_tokens += sample['asm_tokens']
        idx += 1
    
    pretrain_pool = pretrain_ir + pretrain_asm
    
    print(f"  IR:  {ir_tokens:,} ({ir_tokens/1e9:.2f}B) - {len(pretrain_ir):,}개 샘플")
    print(f"  ASM: {asm_tokens:,} ({asm_tokens/1e9:.2f}B) - {len(pretrain_asm):,}개 샘플")
    print(f"  합계: {ir_tokens + asm_tokens:,} ({(ir_tokens + asm_tokens)/1e9:.2f}B)")
    print(f"  총 샘플: {len(pretrain_pool):,}개")
    
    # Stage 2: Compiler Emulation
    print(f"\n🎯 Stage 2: Compiler Emulation")
    
    # 새 paired 데이터 (85% of 10B = 8.5B)
    ce_new = []
    ce_new_tokens = 0
    CE_NEW_TARGET = 8_500_000_000
    
    while ce_new_tokens < CE_NEW_TARGET and idx < len(all_samples):
        sample = all_samples[idx]
        ce_new.append({
            'sample': sample,
            'use_type': 'paired',
            'tokens': sample['total_tokens']
        })
        ce_new_tokens += sample['total_tokens']
        idx += 1
    
    # 15% retention from pretraining (1.5B)
    CE_RETENTION_TARGET = 1_500_000_000
    retention_pool = random.sample(pretrain_pool, len(pretrain_pool))
    ce_retention = []
    ce_retention_tokens = 0
    
    for item in retention_pool:
        if ce_retention_tokens >= CE_RETENTION_TARGET:
            break
        ce_retention.append(item)
        ce_retention_tokens += item['tokens']
    
    ce_pool = ce_new + ce_retention
    ce_total = ce_new_tokens + ce_retention_tokens
    
    print(f"  새 paired: {ce_new_tokens:,} ({ce_new_tokens/1e9:.2f}B, {ce_new_tokens/ce_total*100:.1f}%)")
    print(f"  Retention: {ce_retention_tokens:,} ({ce_retention_tokens/1e9:.2f}B, {ce_retention_tokens/ce_total*100:.1f}%)")
    print(f"  합계: {ce_total:,} ({ce_total/1e9:.2f}B)")
    print(f"  샘플: {len(ce_pool):,}개")
    
    # Stage 3: Evaluation
    print(f"\n🎯 Stage 3: Evaluation")
    
    eval_pool = []
    eval_tokens = 0
    EVAL_TARGET = 3_000_000_000
    
    while eval_tokens < EVAL_TARGET and idx < len(all_samples):
        sample = all_samples[idx]
        eval_pool.append({
            'sample': sample,
            'use_type': 'paired',
            'tokens': sample['total_tokens']
        })
        eval_tokens += sample['total_tokens']
        idx += 1
    
    print(f"  토큰: {eval_tokens:,} ({eval_tokens/1e9:.2f}B)")
    print(f"  샘플: {len(eval_pool):,}개")
    
    # 전체 사용량
    print(f"\n📊 전체 사용 현황:")
    total_used = ir_tokens + asm_tokens + ce_new_tokens + ce_retention_tokens + eval_tokens
    print(f"  사용 토큰: {total_used:,} ({total_used/1e9:.2f}B)")
    print(f"  사용 샘플: {idx:,} / {len(all_samples):,}")
    
    # 저장
    output_dir = Path("dataset_splits")
    output_dir.mkdir(exist_ok=True)
    
    for name, pool in [
        ('pretraining', pretrain_pool),
        ('compiler_emulation', ce_pool),
        ('evaluation', eval_pool)
    ]:
        with open(output_dir / f"{name}.jsonl", 'w') as f:
            for item in pool:
                f.write(json.dumps({
                    'file_id': item['sample']['file_id'],
                    'use_type': item['use_type'],
                    'ir_path': item['sample']['ir_path'],
                    'asm_path': item['sample']['asm_path'],
                    'tokens': item['tokens'],
                    'parquet': item['sample']['parquet']
                }) + '\n')
    
    with open(output_dir / "split_stats.json", 'w') as f:
        json.dump({
            'pretraining': {
                'ir_tokens': ir_tokens,
                'asm_tokens': asm_tokens,
                'total_tokens': ir_tokens + asm_tokens,
                'samples': len(pretrain_pool),
                'ir_samples': len(pretrain_ir),
                'asm_samples': len(pretrain_asm)
            },
            'compiler_emulation': {
                'new_tokens': ce_new_tokens,
                'retention_tokens': ce_retention_tokens,
                'total_tokens': ce_total,
                'samples': len(ce_pool)
            },
            'evaluation': {
                'total_tokens': eval_tokens,
                'samples': len(eval_pool)
            },
            'total_used_tokens': total_used,
            'total_samples_used': idx
        }, f, indent=2)
    
    print(f"\n✓ 저장 완료: dataset_splits/")
    print("=" * 70)

if __name__ == "__main__":
    main()