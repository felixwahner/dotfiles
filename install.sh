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

# Get the whole shebang now!
source ~/.bashrc

cat <<EOM

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
