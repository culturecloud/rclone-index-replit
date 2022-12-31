#!/bin/bash

echo ""
./rclone -V
echo ""

./rclone serve webdav -v $SERVE_REMOTE: \
    --addr=:0 \
    --user=$AUTH_USER \
    --pass=$AUTH_PASS \
    --template="templates/index.html" \
    --vfs-cache-mode="writes" \
    --poll-interval=0