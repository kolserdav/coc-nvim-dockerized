echo "Installing Coc plugins..."
npm install coc-tsserver --no-package-lock --omit=dev

echo "Installing dependencies ..."
# Return to working dir
cd -
npm i


