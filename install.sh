#!/bin/bash
#
# Installs dotfiles for bash shells
#

# Only copy these files if on Mac OS X system
if [ `uname` == "Darwin" ]; then
  cp files/bashrc ~/.bashrc
  cp files/bash_profile ~/.bash_profile
fi

# Copy files to home directory
cp files/bash_aliases ~/.bash_aliases
cp files/bash_prompt ~/.bash_prompt
cp files/gitconfig ~/.gitconfig
cp files/irbrc ~/.irbrc
cp files/pryrc ~/.pryrc
cp files/inputrc ~/.inputrc
cp files/gemrc ~/.gemrc
cp files/rvmrc ~/.rvmrc
cp files/gitignore ~/.gitignore

# Get the whole shebang now!
source "$HOME/.bashrc"
