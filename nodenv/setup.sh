#!/bin/sh

if !(nodenv -v >/dev/null 2>&1); then
  brew install nodenv

  echo 'eval "$(nodenv init -)"' >>$HOME/.zprofile
  eval "$(nodenv init -)"

  curl -fsSL https://github.com/nodenv/nodenv-installer/raw/master/bin/nodenv-doctor | bash
fi
