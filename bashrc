UNAME=$(uname -s)

# Source global definitions
if [[ -f /etc/bashrc ]]; then
	. /etc/bashrc
fi

# Source .profile, if it exists
if [[ -f ${HOME}/.profile ]]; then
    . ${HOME}/.profile
fi
