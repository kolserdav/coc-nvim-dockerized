echo "Installing Coc plugins..."
cd $EXTENSIONS
npm install coc-tsserver --ignore-scripts --no-lockfile --no-global --legacy-peer-deps --omit=dev
cd -

echo "Installing dependencies ..."
npm i


