#!/usr/bin/env bash

echo "setting up vim"
# Create necessary directories
mkdir -p ${HOME}/.config/nvim/{autoload,undodir}

# Install vim-plug
curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
