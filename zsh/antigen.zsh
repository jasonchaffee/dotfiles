# Configure antigen, if installed
if [[ -f ~/.antigen/antigen.zsh ]]; then
    . ~/.antigen/antigen.zsh

    # Load the oh-my-zsh's library.
    antigen use oh-my-zsh

    # Load prezto
    antigen bundle sorin-ionescu/prezto

    # Bundles from the default repo (robbyrussell's oh-my-zsh).
    antigen bundle bower
    antigen bundle brew
    antigen bundle brew-cask
    antigen bundle bundler
    antigen bundle docker
    antigen bundle docker-compose
    antigen bundle ember-cli
    antigen bundle gem
    antigen bundle git
    antigen bundle go
    antigen bundle history
    antigen bundle mvn
    antigen bundle node
    antigen bundle npm
    antigen bundle nvm
    antigen bundle pip
    antigen bundle postgres
    antigen bundle rails
    antigen bundle rake
    antigen bundle rbenv
    antigen bundle ruby
    antigen bundle safe-paste
    antigen bundle sbt
    antigen bundle scala
    antigen bundle svn
    antigen bundle tmux
    antigen bundle command-not-found

    # Syntax highlighting bundle.
    antigen bundle zsh-users/zsh-syntax-highlighting

    # Load the theme.
    antigen theme https://github.com/jasonchaffee/chaffee.zsh-theme.git chaffee

    # Tell antigen that you're done.
    antigen apply
 fi
