#!/bin/sh
brew install --cask visual-studio-code

VSCODE_SETTING_DIR=~/Library/Application\ Support/Code/User
rm "$VSCODE_SETTING_DIR/settings.json"
ln -s $(pwd)/vscode/settings.json "${VSCODE_SETTING_DIR}/settings.json"

# install code command in PATH
# see: https://code.visualstudio.com/docs/setup/mac#_launching-from-the-command-line
cat <<EOF >>$HOME/.zprofile
# Add Visual Studio Code (code)
export PATH="\$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
EOF

source $HOME/.zprofile

# install extention
cat $(pwd)/vscode/extensions | while read extension; do
  code --install-extension $extension
done

code --list-extensions >$(pwd)/vscode/extensions
