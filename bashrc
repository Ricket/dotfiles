# .bashrc

pathadd() {
    if [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="$PATH:$1"
    fi
}

pathprepend() {
    if [[ ":$PATH:" != *":$1:"* ]]; then
        PATH="$1:$PATH"
    fi
}

alias ls='ls --color=auto'
alias ll='ls -lF'
alias la='ls -A'
alias l='ls -CF'

# Common typo of mine
alias Grep='grep'

# This prevents vim from clobbering one screen height worth of buffer when
# you run vim in GNU screen.
alias vim='clear; vim'

# Mac OS X specific
alias gateway="netstat -nr | grep '^default'"

export PS1="[\[\033[32m\]\w\[\033[0m\]]\n\[\033[1;36m\]\u\[\033[1;33m\]-> \[\033[0m\]"

export EDITOR=vim
export SVN_EDITOR=vim

if [ -f ~/.bashrc_custom ]; then
	source ~/.bashrc_custom
fi

