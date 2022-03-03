#!/bin/sh

if (nodebrew -v >/dev/null 2>&1); then
  brew install nodebrew
  nodebrew setup

  echo 'export PATH="$HOME/.nodebrew/current/bin:$PATH"' >>$HOME/.zprofile
  source $HOME/.zprofile
fi
