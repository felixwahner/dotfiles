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
cp files/inputrc ~/.inputrc
cp files/gemrc ~/.gemrc
cp files/rvmrc ~/.rvmrc
cp files/gitignore ~/.gitignore
cp files/dircolors ~/.dircolors

# Get bundler-exec.sh
if [ ! -f ~/.bundler-exec.sh ]; then
  curl -L https://github.com/gma/bundler-exec/raw/master/bundler-exec.sh > ~/.bundler-exec.sh
fi

# Get the whole shebang now!
source ~/.bashrc
