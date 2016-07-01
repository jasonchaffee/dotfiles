UNAME=$(uname -s)

# Source global definitions
if [[ -f /etc/bashrc ]]; then
	. /etc/bashrc
fi

# Source .profile, if it exsists
if [[ -f ${HOME}/.profile ]]; then
    . ${HOME}/.profile
fi

 # Source .zsh files, if it exists
 if [[ -d ${HOME}/.zsh ]]; then
     . ${HOME}/.zsh/checks.zsh
     . ${HOME}/.zsh/alias.zsh
     . ${HOME}/.zsh/functions.zsh
     . ${HOME}/.zsh/exports.zsh
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

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]] && . "${HOME}/.sdkman/bin/sdkman-init.sh"
