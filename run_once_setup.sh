#!/bin/sh
echo "running setup..."

# fd for finding files.
# rg for searching inside files.
# fzf for interactive selection.
# bat for readable previews.
# eza for a better ls
sudo apt update
sudo apt install -y fzf ripgrep fd-find bat eza

# Install Starship for Linux 
curl -sS https://starship.rs/install.sh | sh

