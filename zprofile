# Homebrew (Apple Silicon)
eval "$(/opt/homebrew/bin/brew shellenv)"

# fnm (Fast Node Manager) — set up before zshrc so $PATH is ready
eval "$(fnm env --use-on-cd --shell zsh)"
