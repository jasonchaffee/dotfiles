
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
[[ -s "${HOME}/google-cloud-sdk/path.zsh.inc" ]] && . "${HOME}/google-cloud-sdk/path.zsh.inc"

# The next line enables shell command completion for gcloud.
[[ -s "${HOME}/google-cloud-sdk/completion.zsh.inc" ]] && . "${HOME}/google-cloud-sdk/completion.zsh.inc"

# THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#[[ -s "${HOME}/.sdkman/bin/sdkman-init.sh" ]] && . "${HOME}/.sdkman/bin/sdkman-init.sh"
