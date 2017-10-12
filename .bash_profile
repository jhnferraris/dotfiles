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


