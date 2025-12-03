# some utility functions for manipulating the PATH env var
# http://superuser.com/questions/490425

# -------------------------------------------------------------------
# append to path
# -------------------------------------------------------------------
function path-append() {
  path-remove $1
  export PATH="$PATH:$1"
}

# -------------------------------------------------------------------
# prepend to path
# -------------------------------------------------------------------
function path-prepend() {
  path-remove $1
  export PATH="$1:$PATH"
}

# -------------------------------------------------------------------
# remove from path
# -------------------------------------------------------------------
function path-remove() {
  export PATH=$(echo -n $PATH | awk -v RS=: -v ORS=: '$0 != "'$1'"' | sed 's/:$//')
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