#!/bin/bash

# Install ag if needed
if ! command -v ag &> /dev/null; then
    sudo apt-get update
    sudo apt-get install -y silversearcher-ag
fi

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

# Create a new zshrc just for the container
cat > ~/.zshrc << 'EOL'
export ZSH=$HOME/.oh-my-zsh
ZSH_THEME="dstufft"
source $ZSH/oh-my-zsh.sh
source ~/.aliases
EOL