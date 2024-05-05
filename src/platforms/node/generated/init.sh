#! /usr/bin/bash
# Generated by script. Don't change it manually!

XDG_CONFIG_HOME=$HOME/.local/share
COC_PATH=$XDG_CONFIG_HOME/coc
EXTENSIONS=$COC_PATH/extensions
echo "Creating Coc extensions dir: $EXTENSIONS ..."
mkdir -p $COC_PATH
sudo chown $(whoami):$(whoami) -R $COC_PATH
mkdir -p $EXTENSIONS
echo '{"dependencies":{}}' > $EXTENSIONS/package.json
cd $EXTENSIONS

npm install coc-json --install-strategy=shallow --omit=dev

########## Platform specified part ##########
echo "Installing Coc plugins..."
npm install coc-tsserver --no-package-lock --omit=dev

echo "Installing dependencies ..."
# Return to working dir
cd -
npm i
#############################################


while :
do
  sleep 1
done
