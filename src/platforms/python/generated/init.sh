#! /usr/bin/bash
# Generated by script. Don't change it manually!

cd $EXTENSIONS
npm install coc-json --install-strategy=shallow --omit=dev
cd -

########## Platform specified part ##########
echo "Installing Coc plugins..."
cd $EXTENSIONS
npm install coc-pyright --ignore-scripts --no-lockfile --no-global --legacy-peer-deps --omit=dev
cd -

echo "Installing dependencies ..."

#pip install
#############################################


echo "Starting default script ..."
while :
do
  sleep 1
done
