eval "$(/opt/homebrew/bin/brew shellenv)"

export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
export PATH="/opt/homebrew/opt/libpq/bin:$PATH"
export TERM=alacritty

if command -v pyenv 1>/dev/null 2>&1; then
  eval "$(pyenv init -)"
fi
