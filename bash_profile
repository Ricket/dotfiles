# .bash_profile
# This file is executed in login shells but not when opening screen
# Screen runs .bashrc.

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

# Load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# Install bash completion, if it exists
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

if [ -f ~/.bash_profile_custom ]; then
	source ~/.bash_profile_custom
fi
