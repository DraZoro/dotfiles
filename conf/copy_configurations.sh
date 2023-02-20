#!/bin/bash
cp tmux ~/.tmux.conf
cp vimrc ~/.vimrc
cp init.vim ~/
mkdir -p ~/.config/nvim/
# Download vim-plug
# https://github.com/junegunn/vim-plug
#sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
#	       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
#cp init.vim ~/.config/nvim/
