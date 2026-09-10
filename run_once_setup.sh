#!/bin/sh
echo "running setup..."

# Make user-installed commands available immediately. Installers also update
# shell startup files, but those changes do not affect this running script.
mkdir -p "$HOME/.local/bin"
export PATH="$HOME/.atuin/bin:$HOME/.local/bin:$PATH"

grep -qxF 'export PATH="$HOME/.local/bin:$PATH"' "$HOME/.bashrc" 2>/dev/null || \
  printf '\nexport PATH="$HOME/.local/bin:$PATH"\n' >> "$HOME/.bashrc"

# fd for finding files.
# rg for searching inside files.
# fzf for interactive selection.
# bat for readable previews.
# eza for a better ls
# ncdu instead of du (disk usage)
# btop instead of top
# gping instead of ping
# zoxide for long files path
# zoxide usage:
#   z work  - jumps non-interactively
#   zi  - opens an interactive selector
sudo apt update
sudo apt install -y fzf ripgrep fd-find bat eza 
sudo apt install -y ncdu btop gping zoxide

# cmatrix is a terminal program that shows the Matrix-style falling text effect
sudo apt install cmatrix -y

# Lazygit - a delightful alternative to something like the GitHub Desktop application, and it runs inside the terminal.
# Herdr - a terminal workspace manager.
# fastfetch - fetching system information and displaying it in a visually appealing way
# gdu - Disk Usage with slick TUI
# Superfile - fancy file manager (spf)
sudo apt install -y lazygit fastfetch gdu
curl -fsSL https://herdr.dev/install.sh | sh
bash -c "$(curl -sLo- https://superfile.dev/install.sh)"

# Atuin is a modern shell history tool that replaces plain history with a searchable SQLite-backed database and can sync history across machines with end-to-end encryption
# (Ctrl + o : inspect - Ctrl + s : Search)
curl --proto '=https' --tlsv1.2 -LsSf https://setup.atuin.sh | sh -s -- --non-interactive
atuin import auto

# ##########################
# Install Starship for Linux 
curl -sS https://starship.rs/install.sh | sh -s -- -y --bin-dir "$HOME/.local/bin"
