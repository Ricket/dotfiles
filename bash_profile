# .bash_profile
# This file is executed in login shells but not when opening screen
# Screen runs .bashrc.

# Terminal colors
export CLICOLOR=1
export TERM=xterm-256color

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

if [ -f ~/.bash_profile_custom ]; then
	source ~/.bash_profile_custom
fi

