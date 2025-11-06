from pathlib import Path
import subprocess

result = subprocess.run(['clang', '-S', 'test_single_parquet_output/ir/000000.ll', '-o', '/tmp/test2.s'],
                       capture_output=True, text=True)
print(f"Return code: {result.returncode}")
print(f"File exists: {Path('/tmp/test2.s').exists()}")