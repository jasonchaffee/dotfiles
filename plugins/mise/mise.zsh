# -------------------------------------------------------------------
# Activate mise
# -------------------------------------------------------------------
export SHELL_NAME=$(basename "$SHELL")
if command -v mise >/dev/null 2>&1; then;
    eval "$(mise activate ${SHELL_NAME})"
fi