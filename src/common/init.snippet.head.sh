
echo "Installing Neovim plugins..."
nvim -c "PlugInstall --sync | q | q"

XDG_CONFIG_HOME=$HOME/.local/share
EXTENSIONS=$XDG_CONFIG_HOME/coc/extensions
echo "Createing Coc extensions dir: $EXTENSIONS ..."
mkdir -p $EXTENSIONS
echo '{"dependencies":{}}' > $EXTENSIONS/package.json
cd $EXTENSIONS