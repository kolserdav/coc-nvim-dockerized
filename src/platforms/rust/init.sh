echo "Installing Coc plugins..."
cd $EXTENSIONS
npm install coc-rust-analyzer --ignore-scripts --no-lockfile --no-global --legacy-peer-deps --omit=dev
cd -

echo "Installing dependencies ..."

cargo update

rust-analyzer