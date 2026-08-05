# dotfiles

This repo contains dotfiles. This is using [Chezmoi](https://chezmoi.io), the dotfile manager to setup the install.

## How to run

```shell
export GITHUB_USERNAME=wahid007
sh -c "$(curl -fsLS get.chezmoi.io)" -- init --apply $GITHUB_USERNAME
```
