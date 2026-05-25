# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="dstufft"

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git)

source $ZSH/oh-my-zsh.sh

# search when pressing up or down
bindkey "^[[A" history-substring-search-up
bindkey "^[[B" history-substring-search-down

# vi mode
bindkey -v
bindkey "^F" vi-cmd-mode
bindkey jj vi-cmd-mode

# Set personal aliases
source ~/.aliases

# rbenv
eval "$(rbenv init - zsh)"

# GPG
export GPG_TTY=$(tty)

# Local bin
export PATH="$HOME/.local/bin:$PATH"

# Node version manager (fnm)
eval "$(fnm env --use-on-cd)"

# Local config (secrets, machine-specific settings — not committed to git)
[[ -f ~/.zshrc.local ]] && source ~/.zshrc.local
