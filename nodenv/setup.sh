#!/bin/sh

if !(nodenv -v >/dev/null 2>&1); then
  # install anyenv
  brew install anyenv
  anyenv install --init
  echo 'eval "$(anyenv init -)"' >>$HOME/.zprofile
  eval "$(anyenv init -)"

  anyenv install nodenv
  echo 'eval "$(nodenv init -)"' >>$HOME/.zprofile
  nodenv init
  curl -fsSL https://github.com/nodenv/nodenv-installer/raw/master/bin/nodenv-doctor | bash
fi
