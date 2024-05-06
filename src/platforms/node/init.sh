echo "Installing Coc plugins..."
cd $EXTENSIONS
npm install coc-tsserver --ignore-scripts --no-lockfile --no-global --legacy-peer-deps --omit=dev
cd -

if [ -f $custom_script_path  ]; then
	echo "Running custom user script"
	bash $custom_script_path
else
	echo "Custom script is not defined, running default 'npm install'"
	npm i
fi
