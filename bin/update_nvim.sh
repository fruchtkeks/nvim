#!/bin/bash

URL="https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage"

# Download Neovim

mkdir -p ~/bin
wget --no-verbose --output-document ~/bin/nvim.appimage $URL
chmod u+x ~/bin/nvim.appimage

if ! [ -L ~/bin/nv ]; then
    ln -s ~/bin/nvim.appimage ~/bin/nv
fi

# Install Plugin Manager

sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
