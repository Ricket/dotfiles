# .bashrc

pathadd() {
    if [ -d "$1" ] && [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="$PATH:$1"
    fi
}

alias ls='ls --color=auto'
alias ll='ls -lF'
alias la='ls -A'
alias l='ls -CF'

# This prevents vim from clobbering one screen height worth of buffer when
# you run vim in GNU screen.
alias vim='clear; vim'

# Mac OS X specific
alias gateway="netstat -nr | grep '^default'"

export PS1="[\[\033[32m\]\w]\[\033[0m\]\n\[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\]"

export EDITOR=vim
export SVN_EDITOR=vim

if [ -f ~/.bashrc_custom ]; then
	source ~/.bashrc_custom
fi

