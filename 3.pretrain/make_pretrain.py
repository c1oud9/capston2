"""
Pretraining 파일 이동 (복사 X)
"""

import json
import shutil
from pathlib import Path
from tqdm import tqdm

def move_files():
    base_dir = Path("pretraining_data")
    
    # IR 파일 이동
    ir_output = base_dir / "ir_files"
    ir_output.mkdir(exist_ok=True)
    
    print("📁 IR 파일 이동...")
    with open(base_dir / "ir_samples.jsonl") as f:
        for line in tqdm(f):
            item = json.loads(line)
            src = Path(item['ir_path'])
            if src.exists():
                dst = ir_output / f"{item['file_id']}.ll"
                shutil.move(str(src), str(dst))  # copy2 → move
    
    # ASM 파일 이동
    asm_output = base_dir / "asm_files"
    asm_output.mkdir(exist_ok=True)
    
    print("📁 ASM 파일 이동...")
    with open(base_dir / "asm_samples.jsonl") as f:
        for line in tqdm(f):
            item = json.loads(line)
            src = Path(item['asm_path'])
            if src.exists():
                dst = asm_output / f"{item['file_id']}.s"
                shutil.move(str(src), str(dst))
    
    print("✓ 완료!")
    print(f"  - {ir_output}")
    print(f"  - {asm_output}")
    print("\n⚠️  원본 test_parquet_* 폴더에서 파일 제거됨")

if __name__ == "__main__":
    move_files()