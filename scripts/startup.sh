#!/bin/sh
# Docker startup script

echo "Start ssh deamon in foreground"
/usr/sbin/sshd -D

exec "$@"
