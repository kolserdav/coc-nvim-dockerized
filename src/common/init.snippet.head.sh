
XDG_CONFIG_HOME=$HOME/.local/share
EXTENSIONS=$XDG_CONFIG_HOME/coc/extensions
echo "Creating Coc extensions dir: $EXTENSIONS ..."
mkdir -p $EXTENSIONS
echo '{"dependencies":{}}' > $EXTENSIONS/package.json
cd $EXTENSIONS

npm install coc-json --install-strategy=shallow --omit=dev