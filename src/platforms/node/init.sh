#! /usr/bin/bash

echo "Installing Neovim plugins..."
nvim -c "PlugInstall --sync | q | q"

echo "Installing Coc plugins..."
XDG_CONFIG_HOME=$HOME/.local/share
EXTENSIONS=$XDG_CONFIG_HOME/coc/extensions
mkdir -p $EXTENSIONS
echo '{"dependencies":{}}' > $EXTENSIONS/package.json
cd $EXTENSIONS
npm install coc-tsserver --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod
cd -

echo "Installing dependencies to /mnt ..."
npm i

while :
do
  sleep 1
done

