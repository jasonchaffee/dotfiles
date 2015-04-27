# Add color to terminal
##export PS1="[\d \t \[\033[36m\]\u\[\033[m\]@\[\033[32m\]\h:\[\033[33;1m\]\w\[\033[m\]] \$ "
##export LSCOLORS=ExFxBxDxCxegedabagacad
export CLICOLOR=1
alias ls="ls -Fh"

# Gradle Opts
export GRADLE_OPTS="-Xmx512m -XX:+CMSClassUnloadingEnabled"

# Maven Opts
export MAVEN_OPTS="-Xmx512m -XX:MaxPermSize=512m -XX:+CMSClassUnloadingEnabled"

# SBT Opts
export SBT_OPTS="-Xmx512m -XX:+CMSClassUnloadingEnabled -Dsbt.override.build.repos=false -Dsbt.jse.engineType=Node"

if [ -f ~/.profile.local ]; then
    source ~/.profile.local
fi
