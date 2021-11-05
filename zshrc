#Path to your oh-my-zsh installation.
export ZSH="/Users/ashleyellispierce/.oh-my-zsh"

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="dstufft"

export PATH="$HOME/.bin:$PATH"

export PATH=~/.npm-global/bin:$PATH

plugins=(history-substring-search)

export EDITOR="vim"

export PATH="/Users/ashleyellispierce/.rbenv/shims:/Users/ashleyellispierce/.bin:.git/safe/../../bin:/usr/local/sbin:/Users/ashleyellispierce/.rbenv/bin:/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

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

# Start a new blog post
function new_post() {
  cd ~/projects/anellis.github.io/_posts
  SLUGIFIED="$(echo -n "$1" | sed -e 's/[^[:alnum:]]/-/g' | tr -s '-' | tr A-Z a-z)"
  SLUG=$(date +"%Y-%m-%d"-$SLUFIGIED.md)

  echo <<front_matter > $SLUG
---
layout: post
---
front_matter

  cd ../
  vim .
}


[ -f /opt/dev/dev.sh ] && source /opt/dev/dev.sh

[[ -f /opt/dev/sh/chruby/chruby.sh ]] && type chruby >/dev/null 2>&1 || chruby () { source /opt/dev/sh/chruby/chruby.sh; chruby "$@"; }

[[ -x /usr/local/bin/brew ]] && eval $(/usr/local/bin/brew shellenv)
