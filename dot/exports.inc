# -------------------------------------------------------------------
# Homebrew Bin
# -------------------------------------------------------------------
path_prepend $(brew --prefix)/bin

# -------------------------------------------------------------------
# Initialize mise
# -------------------------------------------------------------------
if command -v mise >/dev/null 2>&1; then eval "$(mise activate ${SHELL_NAME})"; fi

# -------------------------------------------------------------------
# Antidote ZSH Plugin Manager
# -------------------------------------------------------------------
# Source Antidote from Brew Install
if [[ -f "$(brew --prefix)/opt/antidote/share/antidote/antidote.zsh" ]]; then
    . "$(brew --prefix)/opt/antidote/share/antidote/antidote.zsh"

    # initialize plugins statically with ${ZDOTDIR:-~}/.zsh_plugins.txt
    antidote load
fi

# -------------------------------------------------------------------
# Use Default Language for output
# -------------------------------------------------------------------
export LC_ALL='C'

# -------------------------------------------------------------------
# Editor
# -------------------------------------------------------------------
export EDITOR='vim'

# -------------------------------------------------------------------
# Shell Name
# -------------------------------------------------------------------
export SHELL_NAME=$(basename "$SHELL")

# -------------------------------------------------------------------
# Google Antigravity
# -------------------------------------------------------------------
if [[ -d "${HOME}/.antigravity" ]]; then
    export PATH="${HOME}/.antigravity/antigravity/bin:$PATH"
fi

# -------------------------------------------------------------------
# Google Cloud SDK
# -------------------------------------------------------------------
 # The next line updates PATH for the Google Cloud SDK.
if [[ -s "/usr/local/Caskroom/google-cloud-sdk/path.zsh.inc" ]]; then
    . "/usr/local/Caskroom/google-cloud-sdk/path.zsh.inc"
elif [[ -s "/opt/homebrew/Caskroom/google-cloud-sdk/path.zsh.inc" ]]; then
    . "/opt/homebrew/Caskroom/google-cloud-sdk/path.zsh.inc"
fi

# The next line enables shell command completion for gcloud.
if [[ -s "/usr/local/Caskroom/google-cloud-sdk/completion.zsh.inc" ]]; then
    . "/usr/local/Caskroom/google-cloud-sdk/completion.zsh.inc"
elif [[ -s "/opt/homebrew/Caskroom/google-cloud-sdk/completion.zsh.inc" ]]; then
    . "/opt/homebrew/Caskroom/google-cloud-sdk/completion.zsh.inc"
fi

# -------------------------------------------------------------------
# Grep
# -------------------------------------------------------------------
# export GREP_OPTIONS='--color=auto'
export GREP_COLOR='3;33'

# -------------------------------------------------------------------
# Terminal
# -------------------------------------------------------------------
export TERM=xterm-256color

if [[ $IS_LINUX -eq 1 ]]; then
    export LS_COLORS="rs=0:di=01;34:ln=01;36:mh=00:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:mi=01;05;37;41:su=37;41:sg=30;43:ca=30;41:tw=30;42:ow=34;42:st=37;44:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arc=01;31:*.arj=01;31:*.taz=01;31:*.lha=01;31:*.lz4=01;31:*.lzh=01;31:*.lzma=01;31:*.tlz=01;31:*.txz=01;31:*.tzo=01;31:*.t7z=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.dz=01;31:*.gz=01;31:*.lrz=01;31:*.lz=01;31:*.lzo=01;31:*.xz=01;31:*.bz2=01;31:*.bz=01;31:*.tbz=01;31:*.tbz2=01;31:*.tz=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.war=01;31:*.ear=01;31:*.sar=01;31:*.rar=01;31:*.alz=01;31:*.ace=01;31:*.zoo=01;31:*.cpio=01;31:*.7z=01;31:*.rz=01;31:*.cab=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.svg=01;35:*.svgz=01;35:*.mng=01;35:*.pcx=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.m2v=01;35:*.mkv=01;35:*.webm=01;35:*.ogm=01;35:*.mp4=01;35:*.m4v=01;35:*.mp4v=01;35:*.vob=01;35:*.qt=01;35:*.nuv=01;35:*.wmv=0"
elif [[ $IS_MAC -eq 1 ]]; then
    export LSCOLORS=Gxfxcxdxbxegedabagacad
    export CLICOLOR=1
fi

# -------------------------------------------------------------------
# iTerm
# -------------------------------------------------------------------
export DISABLE_AUTO_TITLE="true"

# -------------------------------------------------------------------
# Java
# -------------------------------------------------------------------
if [[ $IS_MAC -eq 1 ]]; then
    export JAVA_HOME=$(/usr/libexec/java_home)
fi

# -------------------------------------------------------------------
# Initialize jenv
# -------------------------------------------------------------------
if command -v jenv >/dev/null 2>&1; then eval "$(jenv init -)"; fi

# -------------------------------------------------------------------
# Initialize nvm
# ----------------------------------------- --------------------------
if [[ -d "${HOME}/.nvm" ]]; then
    export NVM_DIR="${HOME}/.nvm"
    
    if [[ -s "${NVM_DIR}/nvm.sh" ]]; then
        . "${NVM_DIR}/nve.sh"
    fi
    
    if [[ -s "$NVM_DIR/bash_completion" ]]; then
        . "$NVM_DIR/bash_completion"
    fi
fi

# -------------------------------------------------------------------
# Gradle
# -------------------------------------------------------------------
export GRADLE_OPTS="-Xms512M -Xmx2G"

# -------------------------------------------------------------------
# Maven
# -------------------------------------------------------------------
export MAVEN_OPTS="-Xms512M -Xmx2G"

# -------------------------------------------------------------------
# SBT
# -------------------------------------------------------------------
#export SBT_OPTS="-Xms512M -Xmx2G -Dsbt.override.build.repos=false -Dsbt.jse.engineType=Node"
export SBT_OPTS="-Xms512M -Xmx2G"

# -------------------------------------------------------------------
# SPRING BOOT
# -------------------------------------------------------------------
export SPRING_OUTPUT_ANSI_ENABLED=ALWAYS

# -------------------------------------------------------------------
# LOGBACK
# -------------------------------------------------------------------
if [[ -s "${HOME}/Dev/logback.xml" ]]; then
    export LOGGING_CONFIG="${HOME}/Dev/logback.xml"
fi

# -------------------------------------------------------------------
# Initialize pyenv
# -------------------------------------------------------------------
if command -v pyenv >/dev/null 2>&1; then eval "$(pyenv init -)"; fi

# -------------------------------------------------------------------
# Initialize rbenv
# -------------------------------------------------------------------
if command -v rbenv >/dev/null 2>&1; then eval "$(rbenv init -)"; fi

# -------------------------------------------------------------------
# Initialize chruby
# -------------------------------------------------------------------
if [[ -d /usr/local/share/chruby ]]; then
    . '/usr/local/share/chruby/chruby.sh'
    . '/usr/local/share/chruby/auto.sh'
elif [[ -d /opt/homebrew/share/chruby ]]; then
    . '/opt/homebrew/share/chruby/chruby.sh'
    . '/opt/homebrew/share/chruby/auto.sh'
fi

# -------------------------------------------------------------------
# SDKMAN
# -------------------------------------------------------------------
if [[ -d "${HOME}/.sdkman" ]]; then
    export SDKMAN_DIR="${HOME}/.sdkman"
    
    # THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
    if [[ -s "${SDKMAN_DIR}/bin/sdkman-init.sh" ]]; then
        . "${SDKMAN_DIR}/bin/sdkman-init.sh"
    fi
fi
