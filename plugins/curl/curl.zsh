if [[ $(uname) = 'Darwin' ]]; then
    if command -v brew >/dev/null 2>&1; then
        if command -v /opt/homebrew/opt/curl/bin/curl >/dev/null 2>&1; then
            export PATH="/opt/homebrew/opt/curl/bin:$PATH"
            export CURL_CA_BUNDLE="/opt/homebrew/etc/openssl/cert.pem"
        fi
    fi
fi