"""
Next-Token Prediction Evaluation
StarCoderBase-1B의 perplexity 측정 (IR과 ASM)
"""

import json
import torch
import numpy as np
from pathlib import Path
from tqdm import tqdm
from transformers import AutoTokenizer, AutoModelForCausalLM
import argparse

class NextTokenEvaluator:
    def __init__(self, metadata_dir, model_name="bigcode/starcoderbase-1b", device="cuda"):
        self.metadata_dir = Path(metadata_dir)
        self.device = device
        self.model_name = model_name
        
        print(f"Loading model: {model_name}")
        self.tokenizer = AutoTokenizer.from_pretrained(model_name)
        self.model = AutoModelForCausalLM.from_pretrained(
            model_name,
            torch_dtype=torch.float16 if device == "cuda" else torch.float32,
            device_map="auto"
        )
        self.model.eval()
        
        self.stats = {
            "total_samples": 0,
            "ir_perplexities": [],
            "asm_perplexities": [],
            "ir_total_loss": 0.0,
            "asm_total_loss": 0.0,
            "ir_processed": 0,
            "asm_processed": 0,
            "failed": 0
        }
    
    def read_file(self, path):
        """파일 읽기"""
        try:
            with open(path, 'r', encoding='utf-8', errors='ignore') as f:
                return f.read()
        except:
            return None
    
    def calculate_perplexity(self, text, max_length=2048):
        """텍스트의 perplexity 계산"""
        try:
            encodings = self.tokenizer(text, return_tensors="pt", truncation=True, max_length=max_length)
            
            if encodings['input_ids'].shape[1] < 2:
                return None
            
            input_ids = encodings['input_ids'].to(self.device)
            
            with torch.no_grad():
                outputs = self.model(input_ids, labels=input_ids)
                loss = outputs.loss
            
            perplexity = torch.exp(loss).item()
            
            return perplexity, loss.item()
        
        except Exception as e:
            return None
    
    def evaluate_sample(self, metadata):
        """단일 샘플 평가"""
        try:
            ir_path = metadata['ir_path']
            ir_text = self.read_file(ir_path)
            
            if ir_text:
                result = self.calculate_perplexity(ir_text)
                if result:
                    ppl, loss = result
                    self.stats['ir_perplexities'].append(ppl)
                    self.stats['ir_total_loss'] += loss
                    self.stats['ir_processed'] += 1
            
            asm_path = metadata['asm_path']
            asm_text = self.read_file(asm_path)
            
            if asm_text:
                result = self.calculate_perplexity(asm_text)
                if result:
                    ppl, loss = result
                    self.stats['asm_perplexities'].append(ppl)
                    self.stats['asm_total_loss'] += loss
                    self.stats['asm_processed'] += 1
            
            return True
        
        except Exception as e:
            self.stats['failed'] += 1
            return False
    
    def load_metadata(self):
        """메타데이터 로드"""
        metadata_file = self.metadata_dir / "metadata.jsonl"
        metadata_list = []
        
        with open(metadata_file, 'r') as f:
            for line in f:
                metadata_list.append(json.loads(line))
        
        return metadata_list
    
    def run(self):
        """평가 실행"""
        print("=" * 70)
        print("Next-Token Prediction Evaluation")
        print("=" * 70)
        print(f"Model: {self.model_name}")
        print(f"Device: {self.device}\n")
        
        metadata_list = self.load_metadata()
        print(f"Loaded {len(metadata_list)} samples\n")
        
        pbar = tqdm(total=len(metadata_list), desc="Evaluating", unit="samples")
        
        for metadata in metadata_list:
            self.stats['total_samples'] += 1
            self.evaluate_sample(metadata)
            pbar.update(1)
        
        pbar.close()
        
        print("\n" + "=" * 70)
        print("Evaluation Results")
        print("=" * 70)
        print(f"Total samples: {self.stats['total_samples']}")
        print(f"Failed: {self.stats['failed']}\n")
        
        if self.stats['ir_perplexities']:
            avg_ir_ppl = np.mean(self.stats['ir_perplexities'])
            std_ir_ppl = np.std(self.stats['ir_perplexities'])
            print(f"IR Perplexity:")
            print(f"  Samples evaluated: {self.stats['ir_processed']}")
            print(f"  Average: {avg_ir_ppl:.4f}")
            print(f"  Std Dev: {std_ir_ppl:.4f}")
            print(f"  Min: {min(self.stats['ir_perplexities']):.4f}")
            print(f"  Max: {max(self.stats['ir_perplexities']):.4f}")
        
        if self.stats['asm_perplexities']:
            avg_asm_ppl = np.mean(self.stats['asm_perplexities'])
            std_asm_ppl = np.std(self.stats['asm_perplexities'])
            print(f"\nASM Perplexity:")
            print(f"  Samples evaluated: {self.stats['asm_processed']}")
            print(f"  Average: {avg_asm_ppl:.4f}")
            print(f"  Std Dev: {std_asm_ppl:.4f}")
            print(f"  Min: {min(self.stats['asm_perplexities']):.4f}")
            print(f"  Max: {max(self.stats['asm_perplexities']):.4f}")


if __name__ == "__main__":
    parser = argparse.ArgumentParser(description="Evaluate next-token prediction perplexity")
    parser.add_argument("metadata_dir", help="Directory with metadata.jsonl")
    parser.add_argument("-m", "--model", default="bigcode/starcoderbase-1b", help="Model name")
    parser.add_argument("-d", "--device", default="cuda", help="Device (cuda or cpu)")
    
    args = parser.parse_args()
    
    evaluator = NextTokenEvaluator(args.metadata_dir, args.model, args.device)
    evaluator.run()
