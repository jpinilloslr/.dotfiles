# Dotfiles

This repository contains my dotfiles. I use [GNU Stow](https://www.gnu.org/software/stow/) to manage them.

## Install Stow

Ubuntu

```bash
sudo apt install stow
```

Fedora

```bash
sudo dnf install stow
```

## Install packages

```bash
git clone git@github.com:jpinilloslr/dotfiles.git ~/.dotfiles
cd ~/.dotfiles
stow -t ~ *
```
