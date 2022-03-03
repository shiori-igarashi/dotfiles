#!/bin/sh

pip3 install powerline-shell

#########################
## fonts
#########################
# clone
git clone https://github.com/powerline/fonts.git --depth=1
# install
cd fonts
./install.sh
# clean-up a bit
cd ..
rm -rf fonts

source $HOME/.zshrc

#########################
## config
#########################
mkdir -p $HOME/.config/powerline-shell &&
  ln -sf $(pwd)/powerline/config.json $HOME/.config/powerline-shell/config.json
