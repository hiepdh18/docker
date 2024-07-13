#!/bin/bash

echo "Starting TURN/STUN server"

turnserver -c /etc/turnserver.conf \
  --user=${TURN_USER_NAME}:${TURN_USER_PASSWORD}
