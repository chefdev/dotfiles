# dotfiles

A so far pretty lightweight zsh setup for your terminal...


## Demo Docker Image
You can check out how the setup look and feel with a preconfigured docker image by running:

```shell
docker run --name dotfiles-chefdev-demo -it docker.pkg.github.com/chefdev/dotfiles/demo:latest
```

## Setup requirements

* Following packages should already be installed: `wget || curl` `git` `zsh` `tmux`
* Have a font installed that supports Powerline like
  [Cascadia Code PL](https://docs.microsoft.com/en-us/windows/terminal/cascadia-code)

## Get it running

Having the requirements installed simply:

1. Clone the repository and submodules

```shell
git clone --recurse-submodules https://github.com/chefdev/dotfiles.git ~/.dotfiles
```

2. *Optionally*, backup your existing `~/.bashrc`, `~/.zshrc` or `~/.p10k.zsh` files like for example

```shell
mv ~/.bashrc ~/.bashrc.backup
```

3. Create symlink for dotfiles

```shell
ln -s ~/.dotfiles/bash/.bashrc ~/.bashrc
ln -s ~/.dotfiles/zsh/.zshrc ~/.zshrc
ln -s ~/.dotfiles/zsh/.p10k.zsh ~/.p10k.zsh
```

4. Change your default shell

```shell
chsh -s $(which zsh)
```

5. With symlinks set you can keep the project up to date with

```shell
git -C ~/.dotfiles pull --recurse-submodules
```
