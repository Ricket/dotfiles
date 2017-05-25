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
alias sl='ls'

# Common typo of mine
alias Grep='grep'

# This prevents vim from clobbering one screen height worth of buffer when
# you run vim in GNU screen.
alias vim='clear; vim'

# Mac OS X specific
alias gateway="netstat -nr | grep '^default'"

# https://serverfault.com/a/425657
hostnamecolor=$(hostname | od | tr ' ' '\n' | awk '{total = total + $1}END{print 30 + (total % 6)}')
export PS1="[\[\033[32m\]\w\[\033[0m\]]\n\[\033[1;${hostnamecolor}m\]\u@\h\[\033[1;33m\]-> \[\033[0m\]"

export EDITOR=vim
export SVN_EDITOR=vim

# Add 'v' command. Pipe to this when you want to open some text into vim.
# http://vi.stackexchange.com/a/2726
v() {
    vim -c ScratchBuffer -
}

if [ -f ~/.bashrc_custom ]; then
	source ~/.bashrc_custom
fi

