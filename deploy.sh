#!/bin/bash

mkdir -p ~/.ssh
echo "$SSH_PRIVATE_KEY" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
ssh-keyscan -H $REMOTE_HOST >> ~/.ssh/known_hosts
eval $(ssh-agent)
ssh-add - <<< "$SSH_PRIVATE_KEY"

scp -P $REMOTE_PORT -i ~/.ssh/id_rsa -r * $REMOTE_USER@$REMOTE_HOST:/data/smart/

ssh $REMOTE_USER@$REMOTE_HOST -p $REMOTE_PORT -i ~/.ssh/id_rsa << 'EOF'
  cd /data/smart/
  docker-compose down
  docker-compose up -d
EOF
