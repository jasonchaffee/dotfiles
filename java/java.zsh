# the following functions are useful to manage multiple versions of java
# most of these functions are based on the work of others:
# http://superuser.com/questions/490425

# -------------------------------------------------------------------
# Check jdk
# -------------------------------------------------------------------
function jdk-check() {
  echo PATH=${PATH}
  echo ""
  echo JAVA_HOME=${JAVA_HOME}
  echo ""
  java -version
}

# -------------------------------------------------------------------
# List jdks
#
# -------------------------------------------------------------------
function jdk-list() {
  if [[  $(uname) = 'Darwin' ]]; then
    DELIM=-
    OS_VERSION=$(sw_vers -productVersion | cut -d . -f 1)

    if [[ $OS_VERSION -lt 11 ]]; then
        DELIM=,
    fi

    /usr/libexec/java_home -V 2>&1 | grep -E "\d.\d.\d" | cut -d ${DELIM} -f 1 | colrm 1 4 | grep -v JavaVirtualMachines
  fi
}

# -------------------------------------------------------------------
# Set jdk
# usage example: jdk_set 1.6
# -------------------------------------------------------------------
function jdk-set() {
  if [ $# -ne 0 ]; then
    jdk-unset

    if [[ $(uname) = 'Darwin' ]]; then
        export JAVA_HOME=$(/usr/libexec/java_home -v $@)
    fi

    path-prepend ${JAVA_HOME}/bin
  fi
}

# -------------------------------------------------------------------
# Reset jdk
#
# -------------------------------------------------------------------
function jdk-reset() {
  jdk-unset

  if [[ $(uname) = 'Darwin' ]]; then
    export JAVA_HOME=$(/usr/libexec/java_home)
  fi
}

# -------------------------------------------------------------------
# Unset jdk
#
# -------------------------------------------------------------------
function jdk-unset() {
  if [ -n "${JAVA_HOME}" ]; then
   path-remove ${JAVA_HOME}/bin
   unset JAVA_HOME
  fi

  if [[ $(uname) = 'Darwin' ]]; then
    path-remove '/System/Library/Frameworks/JavaVM.framework/Home/bin'
    path-remove $(/usr/libexec/java_home)/bin
  fi
}