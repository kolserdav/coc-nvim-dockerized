echo "Installing Coc plugins..."
npm install coc-tsserver --global-style --ignore-scripts --no-bin-links --no-package-lock --only=prod

echo "Installing dependencies ..."
# Return to working dir
cd -
npm i


