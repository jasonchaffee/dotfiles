# Source global definitions
if [[ -f /etc/zshrc ]]; then
	. /etc/zshrc
fi

# Configure antigen, if installed
if [[ -f ~/.antigen/antigen.zsh ]]; then
    . ~/.antigen/antigen.zsh

    # Load the oh-my-zsh's library.
    antigen use oh-my-zsh

    # Load prezto
    antigen bundle sorin-ionescu/prezto

    # Bundles from the default repo (robbyrussell's oh-my-zsh).
    antigen bundle brew
    antigen bundle brew-cask
    antigen bundle docker
    antigen bundle gem
    antigen bundle git
    antigen bundle mvn
    antigen bundle node
    antigen bundle npm
    antigen bundle pip
    antigen bundle sbt
    antigen bundle scala
    antigen bundle svn
    antigen bundle tmux
    antigen bundle command-not-found

    # Syntax highlighting bundle.
    antigen bundle zsh-users/zsh-syntax-highlighting

    # Load the theme.
    antigen theme sorin

    # Tell antigen that you're done.
    antigen apply
 fi

 # Source .profile, if it exsists
 if [[ -f ~/.profile ]]; then
     . ~/.profile
 fi
