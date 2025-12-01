# .zsh_plugins.txt - comments begin with "#"

# Basic Zsh plugins are defined in user/repo format
jeffreytse/zsh-vi-mode

# Bash plugins may also work
rupa/z

# empty lines are skipped

# annotations are also allowed:
romkatv/zsh-bench kind:path
olets/zsh-abbr    kind:defer

# set up Zsh completions with plugins
mattmc3/ez-compinit
zsh-users/zsh-completions kind:fpath path:src

# frameworks like oh-my-zsh are supported
getantidote/use-omz        # handle OMZ dependencies
ohmyzsh/ohmyzsh path:lib   # load OMZ's library
ohmyzsh/ohmyzsh path:plugins/colored-man-pages  # load OMZ plugins
ohmyzsh/ohmyzsh path:plugins/magic-enter

# oh-my-zsh custom theme
jasonchaffee/chaffee.zsh-theme

# or lighter-weight ones like zsh-utils
belak/zsh-utils path:editor
belak/zsh-utils path:history
belak/zsh-utils path:prompt
belak/zsh-utils path:utility

# prompts:
#   with prompt plugins, remember to add this to your .zshrc:
#   `autoload -Uz promptinit && promptinit && prompt pure`
sindresorhus/pure     kind:fpath
romkatv/powerlevel10k kind:fpath

# popular fish-like plugins
mattmc3/zfunctions
zsh-users/zsh-autosuggestions
zdharma-continuum/fast-syntax-highlighting kind:defer
zsh-users/zsh-history-substring-search
 