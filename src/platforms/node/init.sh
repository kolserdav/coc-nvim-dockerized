echo "Installing Coc plugins..."
npm install coc-tsserver --ignore-scripts --no-lockfile --no-global --legacy-peer-deps --omit=dev

echo "Installing dependencies ..."
# Return to working dir
cd -
npm i


