#!/usr/bin/env bash

export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
# Path to the bash it configuration
export BASH_IT="$HOME/.bash_it"

# Lock and Load a custom theme file
export BASH_IT_THEME="bakke"

# Don't check mail when opening terminal.
unset MAILCHECK

# Load Bash It
source $BASH_IT/bash_it.sh

# Custom
export DOTFILES=$HOME/.files
source $DOTFILES/.exports
source $HOME/.extra

# RVM
source $HOME/.rvm/scripts/rvm

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# ADB
export PATH=$HOME/Library/Android/sdk/platform-tools:$PATH


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Load mySQL@5.7
export PATH="/usr/local/opt/mysql@5.7/bin:$PATH"

# GCloud
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/path.bash.inc'
source '/usr/local/Caskroom/google-cloud-sdk/latest/google-cloud-sdk/completion.bash.inc'

# Pyenv
eval "$(pyenv init -)"
