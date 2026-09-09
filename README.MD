# dotfiles

This repo contains dotfiles. This is using [Chezmoi](https://chezmoi.io), the dotfile manager to setup the install.

## How to run

```shell
export GITHUB_USERNAME=wahid007
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```

## Installed tools

The `run_once_setup.sh` script installs the following command-line tools:

| Tool | Description | Example usage |
| --- | --- | --- |
| `fzf` | Interactive fuzzy finder for files, command history, and other lists. | `find . -type f \| fzf` |
| `ripgrep` (`rg`) | Fast recursive text search. | `rg "search term"` |
| `fd` | Simple and fast file finder. | `fd "\.md$"` |
| `bat` | File viewer with syntax highlighting and Git integration. | `bat README.MD` |
| `eza` | Modern replacement for `ls`. | `eza --long --git` |
| `ncdu` | Interactive disk-usage analyzer. | `ncdu .` |
| `btop` | Interactive system and process monitor. | `btop` |
| `gping` | Graphs ping latency in the terminal. | `gping example.com` |
| `zoxide` | Learns frequently used directories for faster navigation. | `z projects` or `zi` |
| `cmatrix` | Displays a Matrix-style falling-text animation. | `cmatrix` |
| `lazygit` | Terminal user interface for Git. | `lazygit` |
| `fastfetch` | Displays system information in the terminal. | `fastfetch` |
| `gdu` | Fast disk-usage analyzer with a terminal interface. | `gdu .` |
| `Herdr` | Terminal workspace manager. | `herdr` |
| `Superfile` (`spf`) | Terminal file manager. | `spf` |
| `Atuin` | Searchable shell history with optional encrypted synchronization. | `atuin search "git commit"` |
| `Starship` | Fast, customizable cross-shell prompt. | `eval "$(starship init bash)"` |
