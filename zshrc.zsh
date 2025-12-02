
# Source global definitions
if [[ -f /etc/zshrc ]]; then
	. /etc/zshrc
fi

 # Source .profile, if it exists
 if [[ -f ${HOME}/.profile ]]; then
     . ${HOME}/.profile
 fi

# -------------------------------------------------------------------
# Antidote ZSH Plugin Manager
# -------------------------------------------------------------------
# Source Antidote from Brew Install
if [[ -f "$(brew --prefix)/opt/antidote/share/antidote/antidote.zsh" ]]; then
    . "$(brew --prefix)/opt/antidote/share/antidote/antidote.zsh"

    # use friendly names
    zstyle ':antidote:bundle' use-friendly-names 'yes'

    # initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
    antidote load
fi
