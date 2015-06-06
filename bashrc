UNAME=$(uname -s)

# Source global definitions
if [[ -f /etc/bashrc ]]; then
	. /etc/bashrc
fi

# Source .profile, if it exsists
#if [[ -f ~/.profile ]]; then
#    . ~/.profile
#fi

 # Source .zsh files, if it exists
 if [[ -d ~/.zsh ]]; then
     . ~/.zsh/checks.zsh
     . ~/.zsh/alias.zsh
     . ~/.zsh/functions.zsh
     . ~/.zsh/exports.zsh
 fi

# Add brew bash completion
if  [[ "Darwin" == "$UNAME" ]]; then
    if [[ -f $(brew --prefix)/etc/bash_completion ]]; then
        . $(brew --prefix)/etc/bash_completion
    fi
fi

alias fuck='eval $(thefuck $(fc -ln -1)); history -r'

# Modify bash prompt
##export PS1="[\d \t \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]] \$ "
