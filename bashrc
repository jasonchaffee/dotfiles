UNAME=$(uname -s)

# Source global definitions
if [[ -f /etc/bashrc ]]; then
	. /etc/bashrc
fi

# Source .profile, if it exists
if [[ -f ${HOME}/.profile ]]; then
    . ${HOME}/.profile
fi

 # Source .dot files, if it exists
 if [[ -d ${HOME}/.dot ]]; then
     . ${HOME}/.dot/checks.inc
     . ${HOME}/.dot/aliases.inc
     . ${HOME}/.dot/functions.inc
     . ${HOME}/.dot/exports.inc
 fi

path_append ${HOME}/bin
