
# Source global definitions
if [[ -f /etc/zshrc ]]; then
	. /etc/zshrc
fi

 # Source .profile, if it exists
 if [[ -f ${HOME}/.profile ]]; then
     . ${HOME}/.profile
 fi

 # Source .dot files, if it exists
 if [[ -d ${HOME}/.dot ]]; then
     . ${HOME}/.dot/antigen
     . ${HOME}/.dot/checks
     . ${HOME}/.dot/alias
     . ${HOME}/.dot/functions
     . ${HOME}/.dot/exports
 fi

path_append ${HOME}/bin
