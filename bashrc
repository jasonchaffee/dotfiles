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
     . ${HOME}/.dot/aliases
     . ${HOME}/.dot/functions
     . ${HOME}/.dot/exports
 fi

path_append ${HOME}/bin
