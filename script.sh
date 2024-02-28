#!/bin/bash

# Updates
sudo apt update && sudo apt upgrade -y

# Nice-to-haves
sudo apt install tmux fail2ban exa

# Copy example jail config for later customization
sudo cp /etc/fail2ban/jail.conf /etc/fail2ban/jail.local

# Color-coded "ls"
touch ~/.bash_aliases && echo "alias ls='exa -la'" > .bash_aliases

# Vim/Tmux customizations
echo "set number
set relativenumber" > ~/.vimrc
echo "set -g prefix C-a" > ~/.tmux.conf

# Go installation
wget "https://go.dev/dl/go1.22.0.linux-amd64.tar.gz"
sudo tar -C /usr/local -xzf go1.22.0.linux-amd64.tar.gz
echo "export PATH=$PATH:/usr/local/go/bin" > $HOME/.profile
source $HOME/.profile

# Run "source ~/.bashrc" for aliases
