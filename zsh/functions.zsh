# -------------------------------------------------------------------
# compressed file expander
# (from https://github.com/myfreeweb/zshuery/blob/master/zshuery.sh)
# -------------------------------------------------------------------
ex() {
    if [[ -f $1 ]]; then
        case $1 in
          *.tar.bz2) tar xvjf $1;;
          *.tar.gz) tar xvzf $1;;
          *.tar.xz) tar xvJf $1;;
          *.tar.lzma) tar --lzma xvf $1;;
          *.bz2) bunzip $1;;
          *.rar) unrar $1;;
          *.gz) gunzip $1;;
          *.tar) tar xvf $1;;
          *.tbz2) tar xvjf $1;;
          *.tgz) tar xvzf $1;;
          *.zip) unzip $1;;
          *.Z) uncompress $1;;
          *.7z) 7z x $1;;
          *.dmg) hdiutul mount $1;; # mount OS X disk images
          *) echo "'$1' cannot be extracted via >ex<";;
    esac
    else
        echo "'$1' is not a valid file"
    fi
}

# -------------------------------------------------------------------
# any function from http://onethingwell.org/post/14669173541/any
# search for running processes
# -------------------------------------------------------------------
any() {
    emulate -L zsh
    unsetopt KSH_ARRAYS
    if [[ -z "$1" ]] ; then
        echo "any - grep for process(es) by keyword" >&2
        echo "Usage: any " >&2 ; return 1
    else
        ps xauwww | grep -i --color=auto "[${1[1]}]${1[2,-1]}"
    fi
}

# -------------------------------------------------------------------
# display a neatly formatted path
# -------------------------------------------------------------------
path() {
  echo $PATH | tr ":" "\n" | \
    awk "{ sub(\"/usr\",   \"$fg_no_bold[green]/usr$reset_color\"); \
           sub(\"/bin\",   \"$fg_no_bold[blue]/bin$reset_color\"); \
           sub(\"/opt\",   \"$fg_no_bold[cyan]/opt$reset_color\"); \
           sub(\"/sbin\",  \"$fg_no_bold[magenta]/sbin$reset_color\"); \
           sub(\"/local\", \"$fg_no_bold[yellow]/local$reset_color\"); \
           print }"
}

# -------------------------------------------------------------------
# Mac specific functions
# -------------------------------------------------------------------
if [[ $IS_MAC -eq 1 ]]; then
    # view man pages in Preview
    pman() { ps=`mktemp -t manpageXXXX`.ps ; man -t $@ > "$ps" ; open "$ps" ; }

    # notify function - http://hints.macworld.com/article.php?story=20120831112030251
    #notify() { automator -D title='$1' -D subtitle='$2' -D message='$3' ~/Library/Workflows/'Display Notification.wflow' }
fi

# -------------------------------------------------------------------
# nice mount (http://catonmat.net/blog/another-ten-one-liners-from-commandlingfu-explained)
# displays mounted drive information in a nicely formatted manner
# -------------------------------------------------------------------
function nicemount() { (echo "DEVICE PATH TYPE FLAGS" && mount | awk '$2="";1') | column -t ; }

# -------------------------------------------------------------------
# myIP address
# -------------------------------------------------------------------
function myip() {
  ifconfig lo0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "lo0       : " $2}'
  ifconfig en0 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en0 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
  ifconfig en0 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en0 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
  ifconfig en1 | grep 'inet ' | sed -e 's/:/ /' | awk '{print "en1 (IPv4): " $2 " " $3 " " $4 " " $5 " " $6}'
  ifconfig en1 | grep 'inet6 ' | sed -e 's/ / /' | awk '{print "en1 (IPv6): " $2 " " $3 " " $4 " " $5 " " $6}'
}

# -------------------------------------------------------------------
# (s)ave or (i)nsert a directory.
# -------------------------------------------------------------------
s() { pwd > ~/.save_dir ; }
i() { cd "$(cat ~/.save_dir)" ; }

# -------------------------------------------------------------------
# console function
# -------------------------------------------------------------------
function console () {
  if [[ $# > 0 ]]; then
    query=$(echo "$*"|tr -s ' ' '|')
    tail -f /var/log/system.log|grep -i --color=auto -E "$query"
  else
    tail -f /var/log/system.log
  fi
}

# -------------------------------------------------------------------
# shell function to define words
# http://vikros.tumblr.com/post/23750050330/cute-little-function-time
# -------------------------------------------------------------------
givedef() {
  if [[ $# -ge 2 ]]; then
    echo "givedef: too many arguments" >&2
    return 1
  else
    curl "dict://dict.org/d:$1"
  fi
}

# the following functions are useful to manage multiple versions of java
# most of these functions are based on the work of others:
# http://superuser.com/questions/490425

# -------------------------------------------------------------------
# Check jdk
#
# -------------------------------------------------------------------
function jdk_check() {
  echo JAVA_HOME=${JAVA_HOME}
  echo PATH=${PATH}
  java -version
}

# -------------------------------------------------------------------
# List jdks
#
# -------------------------------------------------------------------
function jdk_list() {
  if [[ $IS_MAC -eq 1 ]]; then
    /usr/libexec/java_home -V 2>&1 | grep -E "\d.\d.\d[,_]" | cut -d , -f 1 | colrm 1 4 | grep -v Home
  fi
}

# -------------------------------------------------------------------
# Set jdk
# usage example: jdk_set 1.6
# -------------------------------------------------------------------
function jdk_set() {
  if [ $# -ne 0 ]; then
    jdk_unset

    if [[ $IS_MAC -eq 1 ]]; then
        export JAVA_HOME=`/usr/libexec/java_home -v $@`
    fi

    path_prepend ${JAVA_HOME}/bin
  fi
}

# -------------------------------------------------------------------
# Reset jdk
#
# -------------------------------------------------------------------
function jdk_reset() {
  jdk_unset

  if [[ $IS_MAC -eq 1 ]]; then
    export JAVA_HOME=`/usr/libexec/java_home`
  fi
}

# -------------------------------------------------------------------
# Unset jdk
#
# -------------------------------------------------------------------
function jdk_unset() {
  if [ -n "${JAVA_HOME}" ]; then
   path_remove ${JAVA_HOME}/bin
   unset JAVA_HOME
  fi

  if [[ $IS_MAC -eq 1 ]]; then
    path_remove '/System/Library/Frameworks/JavaVM.framework/Home/bin'
    path_remove `/usr/libexec/java_home`/bin
  fi
}

# some utility functions for manipulating the PATH env var
# http://superuser.com/questions/490425

# -------------------------------------------------------------------
# append to path
#
# -------------------------------------------------------------------
function path_append() {
  path_remove $1
  export PATH="$PATH:$1"
}

# -------------------------------------------------------------------
# prepend to path
#
# -------------------------------------------------------------------
function path_prepend() {
  path_remove $1
  export PATH="$1:$PATH"
}

# -------------------------------------------------------------------
# remove from path
#
# -------------------------------------------------------------------
function path_remove() {
  export PATH=`echo -n $PATH | awk -v RS=: -v ORS=: '$0 != "'$1'"' | sed 's/:$//'`
}

# -------------------------------------------------------------------
# setup docker env
#
# -------------------------------------------------------------------
function docker_env() {
  if command -v docker-machine env >/dev/null 2>&1; then
    eval "$(docker-machine env)"
  fi
}
