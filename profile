# Put brews first in path
export PATH="/usr/local/bin:$PATH"

# Add color to terminal
#export PS1="[\d \t \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]] \$ "
#export LSCOLORS=ExFxBxDxCxegedabagacad
export CLICOLOR=1
alias ls="ls -Fh"

# Add brew bash completion
if [ "$BASH_VERSION" ]; then
    if [ -f $(brew --prefix)/etc/bash_completion ]; then
        . $(brew --prefix)/etc/bash_completion
    fi
fi

# Use colorsvn instead of svn
alias svn=colorsvn

# Add Github token for Home brew
export HOMEBREW_GITHUB_API_TOKEN=1662a985383e9316a6e390963ad0a0fddf596c79

# Java Home
export JAVA_HOME="$(/usr/libexec/java_home -v 1.7)"

# Gradle Opts
export GRADLE_OPTS="-Xmx512m -XX:+CMSClassUnloadingEnabled"

# Maven Opts
export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=512m -XX:+CMSClassUnloadingEnabled"

# SBT Opts
export SBT_OPTS="-Xmx512m -XX:+CMSClassUnloadingEnabled -Dsbt.override.build.repos=false -Dsbt.jse.engineType=Node"

eval "$(docker-machine env)"
