# Configure antigen, if installed
if [[ -f ${HOME}/.antigen/antigen.zsh ]]; then
    . ${HOME}/.antigen/antigen.zsh

    # Load the oh-my-zsh's library.
    antigen use oh-my-zsh

    # Load prezto
    #antigen bundle sorin-ionescu/prezto

    # Bundles from the default repo (robbyrussell's oh-my-zsh).


    # Syntax highlighting bundle.
    antigen bundle zsh-users/zsh-syntax-highlighting

    # Load the theme.
    antigen theme https://github.com/jasonchaffee/chaffee.zsh-theme.git chaffee

    # Tell antigen that you're done.
    antigen apply
 fi
