_Note: This repository contains my setup of Neovim. It is not meant to be a universal guide or best practice but my personal notes to help me set things up on a new device._

## Setup

1. Install zsh and Oh My Zsh
2. Install tmux
3. Set Configuration for tmux
4. Install Neovim from https://github.com/neovim/neovim/wiki/Installing-Neovim
5. Install Plugin Manager from https://github.com/junegunn/vim-plug
6. Paste Configuration (init.vim) into ~/.config/nvim
7. Install Terminal from https://github.com/microsoft/terminal
8. Setup Neovim Terminal Profile

```sh
mkdir ~/bin
cd ~/bin
wget https://github.com/neovim/neovim/releases/download/stable/nvim.appimage
chmod +x nvim.appimage
ln -s nvim.appimage nv

printf '\nexport PATH="$HOME/bin:$PATH"\n' >> ~/.bashrc

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'

[...]
```

## Install Plugins

``:PlugInstall``

## Fonts

- Install JetBrains Mono Font from https://www.jetbrains.com/lp/mono/
  - https://github.com/ryanoasis/nerd-fonts

## Links

- https://shapeshed.com/vim-netrw/
