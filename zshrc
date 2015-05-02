# Source global definitions
if [[ -f /etc/zshrc ]]; then
	. /etc/zshrc
fi

 # Source .profile, if it exists
 if [[ -f ~/.profile ]]; then
     . ~/.profile
 fi

 # Source .zsh files, if it exists
 if [[ -d ~/.zsh ]]; then
     . ~/.zsh/checks.zsh
     . ~/.zsh/alias.zsh
     . ~/.zsh/functions.zsh
     . ~/.zsh/exports.zsh
     . ~/.zsh/antigen.zsh
 fi
