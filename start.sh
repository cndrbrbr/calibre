#!/bin/bash
#######################################################
#  mount book-NAS and start calibre-containers
# ./start.sh
# (c) 2026 cndrbrbr
#######################################################

mount -t cifs //x.x.x.x/ebooks /mnt/ebooks \
  -o username=x,password=x,vers=2.0,iocharset=utf8
docker compose up -d
