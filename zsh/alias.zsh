# -------------------------------------------------------------------
# Color stuff
# -------------------------------------------------------------------
if [[ $IS_LINUX -eq 1 ]]; then
    alias ll='ls -Fhl --color=auto'  # Colorize output, add file type indicator, and put sizes in long listing human readable form
    alias ls='ls -Fh --color=auto'
    alias lsd='ls -aFhl --color=auto'
elif [[ $IS_MAC -eq 1 ]]; then
    alias ll='ls -FGhl'  # Colorize output, add file type indicator, and put sizes in long listing human readable form
    alias ls='ls -FGh'
    alias lsd='ls -aFGhl'
fi

if command -v colorsvn >/dev/null 2>&1; then
    alias svn=colorsvn
fi

if command -v colordiff >/dev/null 2>&1; then
    alias diff=colordiff
fi

# -------------------------------------------------------------------
# Directory movement
# -------------------------------------------------------------------
alias bk='cd $OLDPWD'
alias rmi='rm -i'
alias cpi='cp -i'
alias mvi='mv -i'

# -------------------------------------------------------------------
# Directory information
# -------------------------------------------------------------------
alias l='ls -al'
alias la='ls -AHl'
alias lh='ls -d .*'               # show hidden files/directories only
alias lsa='ls -ahl'

alias tree="ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'"
alias dus='du -sckx * | sort -nr' #directories sorted by size

alias wordy='wc -w * | sort | tail -n10' # sort files in current directory by the number of words they contain
alias filecount='find . -type f | wc -l' # number of files (not directories)

# -------------------------------------------------------------------
# Mac only
# -------------------------------------------------------------------
if [[ $IS_MAC -eq 1 ]]; then
    alias ql='qlmanage -p 2>/dev/null' # OS X Quick Look
    alias oo='open .' # open current directory in OS X Finder
    alias today='calendar -A 0 -f /usr/share/calendar/calendar.mark | sort'
    alias mailsize='du -hs ~/Library/mail'
    alias smart='diskutil info disk0 | grep SMART' # display SMART status of hard drive

    # Hall of the Mountain King
    alias cello='say -v cellos "di di di di di di di di di di di di di di di di di di di di di di di di di di"'

    # alias to show all Mac App store apps
    alias apps='mdfind "kMDItemAppStoreHasReceipt=1"'

    # reset Address Book permissions in Mountain Lion (and later presumably)
    alias resetaddressbook='tccutil reset AddressBook'

    # refresh brew by upgrading all outdated casks
    alias refreshbrew='brew outdated | while read cask; do brew upgrade $cask; done'

    # rebuild Launch Services to remove duplicate entries on Open With menu
    alias rebuildopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.fram ework/Support/lsregister -kill -r -domain local -domain system -domain user'
fi

# -------------------------------------------------------------------
# Database
# -------------------------------------------------------------------
#alias 'psqlstart=/usr/local/pgsql/bin/pg_ctl -D /usr/local/pgsql/data -l logfile start'
#alias 'psqlstop=/usr/local/pgsql/bin/pg_ctl stop'
#alias mysql='mysql -u root'
#alias mysqladmin='mysqladmin -u root'

# -------------------------------------------------------------------
# Docker
# -------------------------------------------------------------------
alias dki='docker images'
alias dkp='docker ps'
alias dkpa='docker ps -a'
alias dkrm='docker rm'
alias dkrmi='docker rmi'
alias dkrmid='docker rmi $(docker images -q -f dangling=true)'

alias dkcb='docker-compose build'
alias dkcp='docker-compose ps'
alias dkcr='docker-compose rm'
alias dkcs='docker-compose stop'
alias dkcup='docker-compose up -d'

alias dkmcn='docker-machine create -d none'
alias dkmcv='docker-machine create -d virtualbox'
alias dkmip='docker-machine ip'
alias dkml='docker-machine ls'


# -------------------------------------------------------------------
# Git - The git plugins gives a lot of aliases
# -------------------------------------------------------------------
alias gf='git reflog'
alias gv='git log --pretty=format:'%s' | cut -d " " -f 1 | sort | uniq -c | sort -nr'
alias glpc="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold magenta)<%an>%Creset' --abbrev-commit"

# gsh shows the number of commits for the current repos for all developers
alias gsh="git shortlog | grep -E '^[ ]+\w+' | wc -l"

# gu shows a list of all developers and the number of commits they've made
alias gu="git shortlog | grep -E '^[^ ]'"

# -------------------------------------------------------------------
# Extra stuff
# -------------------------------------------------------------------
alias grep='grep --color=auto --exclude-dir={.bzr,.cvs,.git,.hg,.svn}'

alias sz='. ~/.zshrc'

# Force tmux to use 256 colors
alias tmux='TERM=screen-256color-bce tmux'

alias ttop='top -ocpu -R -F -s 2 -n30' # fancy top

# -------------------------------------------------------------------
# Source: http://aur.archlinux.org/packages/lolbash/lolbash/lolbash.sh
# -------------------------------------------------------------------
alias wtf='dmesg'
alias onoz='cat /var/log/errors.log'
alias rtfm='man'
alias visible='echo'
alias invisible='cat'
alias moar='more'
alias icanhas='mkdir'
alias donotwant='rm'
alias dowant='cp'
alias gtfo='mv'
alias hai='cd'
alias plz='pwd'
alias inur='locate'
alias nomz='ps aux | less'
alias nomnom='killall'
alias cya='reboot'
alias kthxbai='halt'
