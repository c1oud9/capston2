# pretrain.py
import os
import torch
from torch.utils.data import DataLoader
from transformers import AutoModelForCausalLM, AutoTokenizer, get_cosine_schedule_with_warmup
from pretrain_dataset import PretrainingDataset
import tarfile
from pathlib import Path
import time
import sys
import json

# 시간 제한 설정 (23시간 50분)
START_TIME = time.time()
TIME_LIMIT = 23.5 * 3600

def check_time_limit():
    if time.time() - START_TIME > TIME_LIMIT:
        print("Time limit reached, saving checkpoint...")
        return True
    return False

def extract_dataset(tar_path, extract_dir):
    """GPU 노드에서 데이터셋 압축 해제"""
    print(f"Extracting {tar_path} to {extract_dir}...")
    extract_dir = Path(extract_dir)
    extract_dir.mkdir(parents=True, exist_ok=True)
    
    with tarfile.open(tar_path, 'r') as tar:
        tar.extractall(extract_dir)
    print("Extraction complete!")

def verify_dataset(extract_dir):
    """데이터셋 검증"""
    extract_dir = Path(extract_dir)
    
    print("\n=== Dataset Verification ===")
    
    # 1. 필수 파일 확인
    manifest_file = extract_dir / "ir_samples.jsonl"
    if not manifest_file.exists():
        raise FileNotFoundError(f"Manifest file not found: {manifest_file}")
    print(f"✓ Manifest file found: {manifest_file}")
    
    # 2. 샘플 개수 확인
    import json
    sample_count = 0
    with open(manifest_file) as f:
        for line in f:
            sample_count += 1
    print(f"✓ Total samples: {sample_count}")
    
    # 3. 디렉토리 구조 확인
    ir_dir = extract_dir / "ir_files"
    if not ir_dir.exists():
        raise FileNotFoundError(f"IR directory not found: {ir_dir}")
    
    ir_files = list(ir_dir.glob("*.ll"))
    print(f"✓ IR files found: {len(ir_files)}")
    
    # 4. 첫 번째 샘플 로드 테스트
    print("\n=== Testing first sample ===")
    with open(manifest_file) as f:
        first_sample = json.loads(f.readline())
    
    test_file = ir_dir / f"{first_sample['file_id']}.ll"
    if not test_file.exists():
        raise FileNotFoundError(f"Test file not found: {test_file}")
    
    with open(test_file) as f:
        content = f.read()
    print(f"✓ First sample loaded: {len(content)} characters")
    print(f"  Preview: {content[:200]}...")
    
    print("\n=== Verification Complete ===\n")
    return sample_count

def save_checkpoint(model, optimizer, scheduler, epoch, step, save_dir, training_progress):
    """체크포인트 저장"""
    save_dir = Path(save_dir)
    save_dir.mkdir(parents=True, exist_ok=True)
    
    checkpoint = {
        'epoch': epoch,
        'step': step,
        'model_state_dict': model.state_dict(),
        'optimizer_state_dict': optimizer.state_dict(),
        'scheduler_state_dict': scheduler.state_dict(),
        'training_progress': training_progress
    }
    
    save_path = save_dir / f"checkpoint_epoch{epoch}_step{step}.pt"
    torch.save(checkpoint, save_path)
    print(f"Checkpoint saved: {save_path}")
    
    # 최종 모델도 저장
    model.save_pretrained(save_dir / f"model_epoch{epoch}_step{step}")
    print(f"Model saved: {save_dir / f'model_epoch{epoch}_step{step}'}")
    
    # 진행 상황 저장
    progress_path = save_dir / f"progress_epoch{epoch}_step{step}.json"
    with open(progress_path, 'w') as f:
        json.dump(training_progress, f, indent=2)
    print(f"Progress saved: {progress_path}")

def main():
    # 설정
    TAR_PATH = "/data/sofusion20/pretain/pretraining_data.tar"
    EXTRACT_DIR = "/tmp/pretraining_data"
    MODEL_NAME = "bigcode/starcoderbase-1b"
    SAVE_DIR = "/data/sofusion20/pretain/checkpoints"
    LOG_DIR = "/data/sofusion20/pretain/logs"
    
    BATCH_SIZE = 4
    GRADIENT_ACCUMULATION_STEPS = 4
    LEARNING_RATE = 5e-5
    WARMUP_STEPS = 500
    MAX_EPOCHS = 10
    
    # 로그 디렉토리 생성
    Path(LOG_DIR).mkdir(parents=True, exist_ok=True)
    
    # 1. 데이터셋 압축 해제
    extract_dataset(TAR_PATH, EXTRACT_DIR)
    
    # 2. 데이터셋 검증
    try:
        total_samples = verify_dataset(EXTRACT_DIR)
    except Exception as e:
        print(f"Dataset verification failed: {e}")
        sys.exit(1)
    
    # 3. 모델 및 토크나이저 로드
    print("Loading model...")
    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    model = AutoModelForCausalLM.from_pretrained(MODEL_NAME)
    model.to(device)
    tokenizer = AutoTokenizer.from_pretrained(MODEL_NAME)
    
    # 4. 데이터셋 로드
    print("Loading dataset...")
    dataset = PretrainingDataset(
        data_dir=EXTRACT_DIR,
        file_type='ir',
        max_length=2048
    )
    
    dataloader = DataLoader(
        dataset,
        batch_size=BATCH_SIZE,
        shuffle=True,
        num_workers=4,
        pin_memory=True
    )
    
    # 5. Optimizer 및 Scheduler
    optimizer = torch.optim.AdamW(model.parameters(), lr=LEARNING_RATE)
    total_steps = len(dataloader) * MAX_EPOCHS // GRADIENT_ACCUMULATION_STEPS
    scheduler = get_cosine_schedule_with_warmup(
        optimizer,
        num_warmup_steps=WARMUP_STEPS,
        num_training_steps=total_steps
    )
    
    # 6. 진행 상황 추적 변수
    training_progress = {
        'total_samples': total_samples,
        'total_epochs': MAX_EPOCHS,
        'batch_size': BATCH_SIZE,
        'samples_per_epoch': len(dataset),
        'batches_per_epoch': len(dataloader),
        'samples_processed': 0,
        'batches_processed': 0,
        'completed_epochs': 0,
        'progress_percentage': 0.0
    }
    
    # 7. 학습 루프
    print("Starting training...")
    global_step = 0
    
    try:
        for epoch in range(MAX_EPOCHS):
            if check_time_limit():
                training_progress['completed_epochs'] = epoch
                training_progress['progress_percentage'] = (training_progress['samples_processed'] / (total_samples * MAX_EPOCHS)) * 100
                print(f"\n=== Time Limit Reached ===")
                print(f"Completed Epochs: {epoch}/{MAX_EPOCHS}")
                print(f"Samples Processed: {training_progress['samples_processed']}/{total_samples * MAX_EPOCHS}")
                print(f"Progress: {training_progress['progress_percentage']:.2f}%")
                save_checkpoint(model, optimizer, scheduler, epoch, global_step, SAVE_DIR, training_progress)
                break
                
            model.train()
            epoch_loss = 0
            
            for batch_idx, batch in enumerate(dataloader):
                # 시간 체크
                if check_time_limit():
                    training_progress['completed_epochs'] = epoch
                    training_progress['progress_percentage'] = (training_progress['samples_processed'] / (total_samples * MAX_EPOCHS)) * 100
                    print(f"\n=== Time Limit Reached ===")
                    print(f"Completed Epochs: {epoch}/{MAX_EPOCHS}")
                    print(f"Current Batch: {batch_idx}/{len(dataloader)}")
                    print(f"Samples Processed: {training_progress['samples_processed']}/{total_samples * MAX_EPOCHS}")
                    print(f"Progress: {training_progress['progress_percentage']:.2f}%")
                    save_checkpoint(model, optimizer, scheduler, epoch, global_step, SAVE_DIR, training_progress)
                    sys.exit(0)
                
                input_ids = batch['input_ids'].to(device)
                attention_mask = batch['attention_mask'].to(device)
                labels = batch['labels'].to(device)
                
                outputs = model(
                    input_ids=input_ids,
                    attention_mask=attention_mask,
                    labels=labels
                )
                
                loss = outputs.loss / GRADIENT_ACCUMULATION_STEPS
                loss.backward()
                epoch_loss += loss.item()
                
                if (batch_idx + 1) % GRADIENT_ACCUMULATION_STEPS == 0:
                    optimizer.step()
                    scheduler.step()
                    optimizer.zero_grad()
                    global_step += 1
                    
                    # 진행 상황 업데이트
                    training_progress['samples_processed'] += BATCH_SIZE * GRADIENT_ACCUMULATION_STEPS
                    training_progress['batches_processed'] += 1
                    
                    if global_step % 100 == 0:
                        current_progress = (training_progress['samples_processed'] / (total_samples * MAX_EPOCHS)) * 100
                        print(f"Epoch {epoch}, Step {global_step}, Loss: {loss.item() * GRADIENT_ACCUMULATION_STEPS:.4f}, Progress: {current_progress:.2f}%")
            
            avg_loss = epoch_loss / len(dataloader)
            training_progress['completed_epochs'] = epoch + 1
            training_progress['progress_percentage'] = (training_progress['samples_processed'] / (total_samples * MAX_EPOCHS)) * 100
            
            print(f"\nEpoch {epoch} completed. Avg Loss: {avg_loss:.4f}")
            print(f"Total Progress: {training_progress['progress_percentage']:.2f}%")
            
            # 에포크 끝날 때만 저장
            save_checkpoint(model, optimizer, scheduler, epoch, global_step, SAVE_DIR, training_progress)
    
    except KeyboardInterrupt:
        print("Training interrupted, saving checkpoint...")
        training_progress['progress_percentage'] = (training_progress['samples_processed'] / (total_samples * MAX_EPOCHS)) * 100
        save_checkpoint(model, optimizer, scheduler, epoch, global_step, SAVE_DIR, training_progress)
    
    finally:
        print("\n=== Final Training Summary ===")
        print(f"Completed Epochs: {training_progress['completed_epochs']}/{MAX_EPOCHS}")
        print(f"Samples Processed: {training_progress['samples_processed']}/{total_samples * MAX_EPOCHS}")
        print(f"Overall Progress: {training_progress['progress_percentage']:.2f}%")
        print("Training finished!")

if __name__ == "__main__":
    main()


    


