# -------------------------------------------------------------------
# Color stuff
# -------------------------------------------------------------------
if [[ $IS_LINUX -eq 1 ]]; then
    alias ls="ls --color=auto -Fh"
elif [[ $IS_MAC -eq 1 ]]; then
    alias ls="ls -GFh"
fi

if [[ command -v colorsvn >/dev/null ]]; then
    alias svn=colorsvn
fi

# -------------------------------------------------------------------
# directory movement
# -------------------------------------------------------------------
alias bk='cd $OLDPWD'
alias rmi='rm -i'
alias cpi='cp -i'
alias mvi='mv -i'

# -------------------------------------------------------------------
# directory information
# -------------------------------------------------------------------
alias lh='ls -d .*' # show hidden files/directories only
alias lsd='ls -aFhlG'
alias l='ls -al'
alias ls='ls -GFh' # Colorize output, add file type indicator, and put sizes in human readable format
alias ll='ls -GFhl' # Same as above, but in long listing format
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
# remote machines
# -------------------------------------------------------------------
#alias 'palantir=ssh mhn@palantir.ome.ksu.edu -p 11122'
#alias 'pvnc=open vnc://palantir.ome.ksu.edu'

# -------------------------------------------------------------------
# database
# -------------------------------------------------------------------
#alias 'psqlstart=/usr/local/pgsql/bin/pg_ctl -D /usr/local/pgsql/data -l logfile start'
#alias 'psqlstop=/usr/local/pgsql/bin/pg_ctl stop'
#alias mysql='mysql -u root'
#alias mysqladmin='mysqladmin -u root'

# -------------------------------------------------------------------
# Mercurial (hg)
# -------------------------------------------------------------------
#alias 'h=hg status'
#alias 'hc=hg commit'
#alias 'push=hg push'
#alias 'pull=hg pull'
#alias 'clone=hg clone'

# -------------------------------------------------------------------
# Git
# -------------------------------------------------------------------
#alias ga='git add'
#alias gp='git push'
#alias gl='git log'
#alias gpl="git log --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit"
#alias gs='git status'
#alias gd='git diff'
#alias gm='git commit -m'
#alias gma='git commit -am'
#alias gb='git branch'
#alias gc='git checkout'
#alias gcb='git checkout -b'
#alias gra='git remote add'
#alias grr='git remote rm'
#alias gpu='git pull'
#alias gcl='git clone'
#alias gta='git tag -a -m'
#alias gf='git reflog'
#alias gv='git log --pretty=format:'%s' | cut -d " " -f 1 | sort | uniq -c | sort -nr'

# leverage aliases from ~/.gitconfig
#alias gh='git hist'
#alias gt='git today'

# curiosities
# gsh shows the number of commits for the current repos for all developers
alias gsh="git shortlog | grep -E '^[ ]+\w+' | wc -l"

# gu shows a list of all developers and the number of commits they've made
alias gu="git shortlog | grep -E '^[^ ]'"

# -------------------------------------------------------------------
# Oddball stuff
# -------------------------------------------------------------------
alias ttop='top -ocpu -R -F -s 2 -n30' # fancy top

# Force tmux to use 256 colors
alias tmux='TERM=screen-256color-bce tmux'

alias sz='. ~/.zshrc'

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
