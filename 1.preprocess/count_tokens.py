"""
그룹 분할 후 토큰 채우기 방식
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
    print("데이터셋 분할 - 그룹 기반")
    print("=" * 70)
    
    all_samples = load_all_metadata()
    random.shuffle(all_samples)
    
    total_ir = sum(s['ir_tokens'] for s in all_samples)
    total_asm = sum(s['asm_tokens'] for s in all_samples)
    total_tokens = total_ir + total_asm
    
    print(f"\n📥 전체: {len(all_samples):,}개")
    print(f"  IR:  {total_ir/1e9:.2f}B")
    print(f"  ASM: {total_asm/1e9:.2f}B")
    print(f"  합계: {total_tokens/1e9:.2f}B")
    
    # 샘플을 3그룹으로 먼저 분할
    # Pretrain 60%, CE 30%, Eval 10%
    n = len(all_samples)
    split1 = int(n * 0.60)
    split2 = int(n * 0.90)
    
    group_pretrain = all_samples[:split1]
    group_ce = all_samples[split1:split2]
    group_eval = all_samples[split2:]
    
    print(f"\n📦 그룹 분할:")
    print(f"  Pretrain: {len(group_pretrain):,}개 샘플")
    print(f"  CE:       {len(group_ce):,}개 샘플")
    print(f"  Eval:     {len(group_eval):,}개 샘플")
    
    # Stage 1: Pretraining
    print(f"\n🎯 Stage 1: Pretraining")
    
    # IR 10B (group_pretrain 절반 사용)
    half = len(group_pretrain) // 2
    pretrain_ir = []
    ir_tokens = 0
    
    for sample in group_pretrain[:half]:
        pretrain_ir.append({
            'sample': sample,
            'use_type': 'ir',
            'tokens': sample['ir_tokens']
        })
        ir_tokens += sample['ir_tokens']
    
    # ASM 10B (나머지 절반 사용)
    pretrain_asm = []
    asm_tokens = 0
    
    for sample in group_pretrain[half:]:
        pretrain_asm.append({
            'sample': sample,
            'use_type': 'asm',
            'tokens': sample['asm_tokens']
        })
        asm_tokens += sample['asm_tokens']
    
    pretrain_pool = pretrain_ir + pretrain_asm
    pretrain_total = ir_tokens + asm_tokens
    
    print(f"  IR:  {ir_tokens:,} ({ir_tokens/1e9:.2f}B)")
    print(f"  ASM: {asm_tokens:,} ({asm_tokens/1e9:.2f}B)")
    print(f"  합계: {pretrain_total:,} ({pretrain_total/1e9:.2f}B)")
    print(f"  샘플: {len(pretrain_pool):,}개")
    
    # Stage 2: Compiler Emulation
    print(f"\n🎯 Stage 2: Compiler Emulation")
    
    ce_new = []
    ce_new_tokens = 0
    
    for sample in group_ce:
        ce_new.append({
            'sample': sample,
            'use_type': 'paired',
            'tokens': sample['total_tokens']
        })
        ce_new_tokens += sample['total_tokens']
    
    # 15% retention
    retention_target = int(ce_new_tokens * 0.15 / 0.85)
    retention_pool = random.sample(pretrain_pool, min(len(pretrain_pool), 1000))
    ce_retention = []
    ce_retention_tokens = 0
    
    for item in retention_pool:
        if ce_retention_tokens >= retention_target:
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
    
    for sample in group_eval:
        eval_pool.append({
            'sample': sample,
            'use_type': 'paired',
            'tokens': sample['total_tokens']
        })
        eval_tokens += sample['total_tokens']
    
    print(f"  토큰: {eval_tokens:,} ({eval_tokens/1e9:.2f}B)")
    print(f"  샘플: {len(eval_pool):,}개")
    
    # 전체 통계
    total_used = pretrain_total + ce_new_tokens + ce_retention_tokens + eval_tokens
    
    print(f"\n📊 최종 통계:")
    print(f"  Pretraining:    {pretrain_total:,} ({pretrain_total/total_used*100:.1f}%)")
    print(f"  CE (new):       {ce_new_tokens:,} ({ce_new_tokens/total_used*100:.1f}%)")
    print(f"  CE (retention): {ce_retention_tokens:,} ({ce_retention_tokens/total_used*100:.1f}%)")
    print(f"  Evaluation:     {eval_tokens:,} ({eval_tokens/total_used*100:.1f}%)")
    print(f"  총 사용:        {total_used:,} ({total_used/1e9:.2f}B)")
    
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
                'total_tokens': pretrain_total,
                'samples': len(pretrain_pool)
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
            'total_used': total_used
        }, f, indent=2)
    
    print(f"\n✓ 저장: dataset_splits/")
    print("=" * 70)

if __name__ == "__main__":
    main()