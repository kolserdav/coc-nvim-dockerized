echo "Installing Coc plugins..."
cd $EXTENSIONS
npm install coc-rust-analyzer --ignore-scripts --no-lockfile --no-global --legacy-peer-deps --omit=dev
cd -

echo "Installing dependencies ..."

if [ -f $custom_script_path  ]; then
	echo "Running custom user script"
	bash $custom_script_path
else
	echo "Custom script is not defined, running default 'cargo update'"
	cargo update
fi


rust-analyzer
