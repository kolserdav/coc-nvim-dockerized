#! /usr/bin/bash

sudo -Sn groupmod -g $GID node
sudo -Sn usermod -u $UID -g $GID node
sudo -Sn chown node:node -R /home/node

exec "$@"
