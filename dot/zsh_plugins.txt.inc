# Antidote - .zsh_plugins.txt
#   - comments  begin with "#"
#
# Basic Zsh plugins are defined in user/repo format
#
# Friendly Names: 
#   - Change how Antidote names the plugin directories for more more user friendly naming by adding this to .zshrc:
#       zstyle ':antidote:bundle' use-friendly-names 'yes'
#
# Annotations
#   kind:
#       - Determine how a bundle should be treated.  The default is kind:zsh
#       Options:
#           zsh:
#               - Source files that match these globs: 
#                   - *.plugin.zsh
#                   - *.zsh
#                   - *.sh
#                   - *.zsh-theme   
#           path:
#               - Put the plugin folder in your $PATH 
#           fpath:
#               - Only puts the plugin folder on the fpath, doing nothing else. 
#                 It can be especially useful for completion scripts that aren’t intended to be sourced directly, 
#                 or for prompts that support 'promptinit'.
#           clone:
#               - Only gets the plugin, doing nothing else. It can be useful for managing a package that isn’t directly used as a shell plugin. 
#           defer:
#               - Defers loading of a plugin. This can be useful for plugins that don't need to be  available right away or are slow to load. 
#                 USE WITH CAUTION. 
#
#   branch:
#       - Specify a branch to download.  Otherwise, defaults to main branch.
#   path:
#       - Specify a subfolder or a specific file if the repo being bundled contains multiple plugins.  
# 


jeffreytse/zsh-vi-mode

# Bash plugins may also work
rupa/z

romkatv/zsh-bench kind:path
olets/zsh-abbr    kind:defer

# set up Zsh completions with plugins
mattmc3/ez-compinit
zsh-users/zsh-completions kind:fpath path:src

# oh-my-zsh
getantidote/use-omz        # handle OMZ dependencies
ohmyzsh/ohmyzsh path:lib   # load OMZ's library
ohmyzsh/ohmyzsh path:plugins/colored-man-pages  # load OMZ plugins
ohmyzsh/ohmyzsh path:plugins/magic-center
ohmyzsh/ohmyzsh path:plugins/command-not-found
ohmyzsh/ohmyzsh path:plugins/dotenv
ohmyzsh/ohmyzsh path:plugins/history

# oh-my-zsh: Source Control
ohmyzsh/ohmyzsh path:plugins/git
ohmyzsh/ohmyzsh path:plugins/svn

# oh-my-zsh: Docker
ohmyzsh/ohmyzsh path:plugins/docker
ohmyzsh/ohmyzsh path:plugins/docker-compose

# oh-my-zsh: Brew
ohmyzsh/ohmyzsh path:plugins/brew

# oh-my-zsh: Java Build Tools
ohmyzsh/ohmyzsh path:plugins/mvn
ohmyzsh/ohmyzsh path:plugins/gradle

# oh-my-zsh: Node
ohmyzsh/ohmyzsh path:plugins/node
ohmyzsh/ohmyzsh path:plugins/npm

# oh-my-zsh: Python
ohmyzsh/ohmyzsh path:plugins/pip
ohmyzsh/ohmyzsh path:plugins/python

# zsh-utils
belak/zsh-utils path:editor
belak/zsh-utils path:history
belak/zsh-utils path:prompt
belak/zsh-utils path:utility

# popular fish-like plugins
mattmc3/zfunctions
zdharma-continuum/fast-syntax-highlighting kind:defer

# zsh-usr plugins
zsh-users/zsh-autosuggestions
zsh-users/zsh-history-substring-search
zsh-users/zsh-syntax-highlighting

# prompts:
#   with prompt plugins, remember to add this to your .zshrc:
#   `autoload -Uz promptinit && promptinit && prompt pure`
sindresorhus/pure     kind:fpath
romkatv/powerlevel10k kind:fpath

# oh-my-zsh custom theme
jasonchaffee/chaffee.zsh-theme
 