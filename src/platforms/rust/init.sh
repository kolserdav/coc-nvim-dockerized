echo "Installing Coc plugins..."
npm install coc-rust-analyzer --no-package-lock --omit=dev

echo "Installing dependencies ..."
# Return to working dir
cd -

cargo update

rust-analyzer