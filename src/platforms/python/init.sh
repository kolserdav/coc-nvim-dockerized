echo "Installing Coc plugins..."
npm install coc-pyright --ignore-scripts --no-lockfile --no-global --legacy-peer-deps --omit=dev
npm install -g pyright

echo "Installing dependencies ..."
# Return to working dir
cd -

#pip install

pyright -w