#! /usr/bin/bash

echo "Installing Neovim plugins."
nvim -c "PlugInstall --sync | q | q"
echo "Installing Coc plugins..."
nvim -c "CocInstall coc-tsserver --sync | q | q"

echo "Installing dependencies to /mnt ..."
npm i

while :
do
  sleep 1
done

