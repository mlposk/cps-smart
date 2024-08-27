#!/bin/bash
ssh $REMOTE_USER@$REMOTE_HOST -p $REMOTE_PORT << 'EOF'
  touch "file_$(date +%s).txt"
  cd $WORKDIR
  docker-compose down
  docker-compose up -d
EOF
