#!/bin/sh

INIT_FILE=/initialized
if [ ! -f "$INIT_FILE" ]; then
  echo "Generating SSH host keys..."
  ssh-keygen -A
  echo "1" > $INIT_FILE
fi

/usr/sbin/sshd -D -e
