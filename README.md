# dotfiles

## Prerequisites
### Packages
* git
* zsh
* tmux

## Usage
```shell script
git clone --recurse-submodules https://github.com/chefdev/dotfiles.git .dotfiles
ln -s .dotfiles/bash/.bashrc .bashrc # eventually make a copy first
ln -s .dotfiles/zsh/.zshrc .zshrc
ln -s .dotfiles/zsh/.p10k.zsh .p10k.zsh
chsh -s $(which zsh)
```

## Keeping it up to date
```shell script
git pull --recurse-submodules
```
