# .bash_profile
# This file is executed in login shells but not when opening screen
# Screen runs .bashrc.

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi


[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

if [ -f ~/.bash_profile_custom ]; then
	source ~/.bash_profile_custom
fi
