# Copy files to home directory
cp files/bash_profile ~/.bash_profile
cp files/bashrc ~/.bashrc
cp files/gitconfig ~/.gitconfig
cp files/irbrc ~/.irbrc
cp files/inputrc ~/.inputrc
cp files/gemrc ~/.gemrc
cp files/rvmrc ~/.rvmrc
cp files/gitignore ~/.gitignore

# Get the whole shebang now!
source ~/.bash_profile

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
