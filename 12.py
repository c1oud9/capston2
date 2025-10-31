from datasets import load_dataset

ds = load_dataset('llvm-ml/ComPile', split='train[:0.00001%]')  # 아주 작은 샘플
print(f"샘플 파일 개수: {len(ds)}")