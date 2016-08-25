
# Source global definitions
if [[ -f /etc/zshrc ]]; then
	. /etc/zshrc
fi

 # Source .profile, if it exists
 if [[ -f ${HOME}/.profile ]]; then
     . ${HOME}/.profile
 fi

 # Source .zsh files, if it exists
 if [[ -d ${HOME}/.zsh ]]; then
     . ${HOME}/.zsh/antigen.zsh
     . ${HOME}/.zsh/checks.zsh
     . ${HOME}/.zsh/alias.zsh
     . ${HOME}/.zsh/functions.zsh
     . ${HOME}/.zsh/exports.zsh
 fi

path_append ${HOME}/bin

# The next line updates PATH for the Google Cloud SDK.
if [[ -s "${HOME}/google-cloud-sdk/path.zsh.inc" ]]; then
    . "${HOME}/google-cloud-sdk/path.zsh.inc"
fi

# The next line enables shell command completion for gcloud.
if [[ -s "${HOME}/google-cloud-sdk/completion.zsh.inc" ]]; then
    . "${HOME}/google-cloud-sdk/completion.zsh.inc"
fi

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
if [[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]]; then
    . "${HOME}/.sdkman/bin/sdkman-init.sh"
fi
