UNAME=$(uname -s)

# Source global definitions
if [[ -f /etc/bashrc ]]; then
	. /etc/bashrc
fi

# Source .profile, if it exsists
if [[ -f ${HOME}/.profile ]]; then
    . ${HOME}/.profile
fi

 # Source .dot files, if it exists
 if [[ -d ${HOME}/.dot ]]; then
     . ${HOME}/.dot/checks
     . ${HOME}/.dot/alias
     . ${HOME}/.dot/functions
     . ${HOME}/.dot/exports
 fi

# Add brew bash completion
if  [[ "Darwin" == "$UNAME" ]]; then
    if [[ -f $(brew --prefix)/etc/bash_completion ]]; then
        . $(brew --prefix)/etc/bash_completion
    fi
fi

# Modify bash prompt
##export PS1="[\d \t \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]] \$

path_append ${HOME}/bin
