# checks (stolen from zshuery)
if [[ $(uname) = 'Linux' ]]; then
    IS_LINUX=1
fi

if [[ $(uname) = 'Darwin' ]]; then
    IS_MAC=1
fi

if [[ command -v brew >/dev/null ]]; then
    HAS_BREW=1
fi

if [[ command -v apt-get >/dev/null ]]; then
    HAS_APT=1
fi

if [[ command -v yum >/dev/null ]]; then
    HAS_YUM=1
fi
