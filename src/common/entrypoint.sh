
echo "Changing GID and UID ..."
sudo -Sn groupmod -g $GID node > /dev/null
sudo -Sn usermod -u $UID -g $GID node > /dev/null
sudo -Sn chown node:node -R /home/node

exec "$@"
