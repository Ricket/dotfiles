# .bash_profile
# This file is executed when SSHing somewhere but not when opening screen
# Screen runs .bashrc.

if [ -f ~/.bashrc ]; then
	source ~/.bashrc
fi

