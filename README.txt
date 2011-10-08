
Just run the install on a terminal:

$ ./install.sh

After this, you'll need to close and reopen the terminal to load the new files.
If you are just updating then just reload* the shell like this:

$ reload

* reload is an alias set in ~/.bash_aliases



For MacOS
---------
Additionally, you might want to install this using Homebrew:

$ brew install bash-completion



For Linux
---------
Since most of Linux distributions comes with a .bashrc file, the install will not
overwrite the existing one. So you'll need to load the relevant files adding this
to your existent ~/.bashrc file:

# To load the aliases (if it's not there already)
[[ -f ~/.bash_aliases ]] && . ~/.bash_aliases

# To load prompt theme (must be after the RVM activation)
[[ -f ~/.bash_prompt ]] && . ~/.bash_prompt



rbenv
-----
# load rbenv if it is installed
if [ -d ~/.rbenv ]; then
  export PATH="$HOME/.rbenv/bin:$PATH"
  eval "$(rbenv init -)"
fi



RVM
---
# To activate RVM and RVM completion
[[ -s ~/.rvm/scripts/rvm ]] && source ~/.rvm/scripts/rvm
[[ -r ~/.rvm/scripts/completion ]] && source ~/.rvm/scripts/completion


# To use bundler-exec (see https://github.com/gma/bundler-exec)
[[ -f ~/.bundler-exec.sh ]] && . ~/.bundler-exec.sh



Solarized Color Scheme
----------------------
Main page (see here for iTerm2 and Terminal for Mac):
http://ethanschoonover.com/solarized

gEdit:
https://github.com/mukashi/solarized.git

gnome-terminal:
https://github.com/sigurdga/gnome-terminal-colors-solarized.git

