#!/bin/sh
set -e
trap error_handler ERR

function error_handler() {
  echo "[ERROR] line: $LINENO" >&2
}

function show_start_installing_message() {
  ESC=$(printf '\033')
  echo "$ESC[35m====🏃 Start $1 $ESC[m"
}

function show_finished_installing_message() {
  ESC=$(printf '\033')
  echo "$ESC[32m====👌 Finished! $ESC[m
  "
}

function execute_script() {
  show_start_installing_message $1

  # 実行
  ./$1/setup.sh

  show_finished_installing_message
}

#########################
## Start settings!!
#########################
rm $HOME/.zshrc
ln -sf $(pwd)/.zshrc $HOME/.zshrc

execute_script "homebrew"
execute_script "Rectangle"
execute_script "vscode"
execute_script "powerline"
execute_script "terminal"
execute_script "nodenv"
execute_script "aws"

####################
## Finished!!
####################
echo "$ESC[32m💫Finished all setup! $ESC[m"
