#!/bin/bash
# upload_pretraining.sh

REMOTE_USER="sofusion"
REMOTE_HOST="aurora.khu.ac.kr"
REMOTE_PATH="/home/$REMOTE_USER/capstone/pretraining_data"

echo "📤 Seraph로 업로드 시작..."

# 디렉토리 생성
ssh $REMOTE_USER@$REMOTE_HOST "mkdir -p $REMOTE_PATH"

# 데이터 전송
rsync -avz --progress \
    pretraining_data/ \
    $REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH/

echo "✓ 업로드 완료!"