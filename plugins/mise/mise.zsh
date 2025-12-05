# -------------------------------------------------------------------
# Activate mise
# -------------------------------------------------------------------
export SHELL_NAME=$(basename "$SHELL")
if command -v mise >/dev/null 2>&1; then;
    export MISE_USE_CURL=1
    export MISE_VERBOSE=1
    eval "$(mise activate ${SHELL_NAME})"
fi