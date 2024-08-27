#!/bin/bash
scp -P $REMOTE_PORT -r * $REMOTE_USER@$REMOTE_HOST:$WORKDIR

ssh $REMOTE_USER@$REMOTE_HOST -p $REMOTE_PORT << 'EOF'
  cd $WORKDIR
  docker-compose down
  docker-compose up -d
EOF
