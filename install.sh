# Copy files to home directory
cp files/bash_completion.sh ~/.bash_completion.sh
cp files/bash_profile ~/.bash_profile
cp files/gem_completion.sh ~/.gem_completion.sh
cp files/git_completion.sh ~/.git_completion.sh
cp files/gitconfig ~/.gitconfig
cp files/irbrc ~/.irbrc
cp files/inputrc ~/.inputrc
cp files/gemrc ~/.gemrc
cp files/rvmrc ~/.rvmrc
cp files/gitignore ~/.gitignore

# Need this
if [ ! -d /etc/bash_completion ]; then
    sudo mkdir -p /etc/bash_completion
fi

# Set the shell
source ~/.bash_profile

