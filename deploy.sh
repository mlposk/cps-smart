#!/bin/bash

mkdir -p ~/.ssh
echo "$SSH_PRIVATE_KEY" > ~/.ssh/id_rsa
chmod 600 ~/.ssh/id_rsa
ssh-keyscan -H $REMOTE_HOST >> ~/.ssh/known_hosts

scp -r * $REMOTE_USER@$REMOTE_HOST:$WORKDIR -P $REMOTE_PORT

ssh $REMOTE_USER@$REMOTE_HOST -p $REMOTE_PORT << 'EOF'
  cd $WORKDIR
  docker-compose down
  docker-compose up -d
EOF
