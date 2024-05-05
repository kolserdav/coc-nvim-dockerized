echo "Installing Coc plugins..."
cd $EXTENSIONS
npm install coc-pyright --ignore-scripts --no-lockfile --no-global --legacy-peer-deps --omit=dev
cd -

echo "Installing dependencies ..."

#pip install
