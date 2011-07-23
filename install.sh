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

cat <<EOM

-----------------------------------------------
If you are on a Linux system you'll need to put
in your .bashrc something like this:

[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases
[[ -f ~/.bash_prompt ]] && . ~/.bash_prompt
[[ -f ~/.bundler-exec.sh ]] && . ~/.bundler-exec.sh

For MacOS X, a .bashrc and .bash_profile are
provided since it usually don't have neither.

-----------------------------------------------
You might want to install this using Homebrew:

$ brew install bash-completion
$ brew install git

If you have XCode4 installed* then you need to
alter your path to use brew's version of git.
In order to do that, edit the /etc/paths file
and put /usr/local/bin before /usr/bin.

* This is because XCode4 installs a git version
in the /usr/bin directory. Maybe it's better to
keep it.
-----------------------------------------------

EOM
