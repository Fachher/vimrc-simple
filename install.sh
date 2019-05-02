#!/bin/sh
set -e

cd ~/.vim_runtime

echo 'set runtimepath+=~/.vim_runtime

source ~/.vim_runtime/vimrcs/defaultconfig.vim
source ~/.vim_runtime/vimrcs/functions.vim
source ~/.vim_runtime/vimrcs/keymappings.vim
source ~/.vim_runtime/vimrcs/plugins.vim
' > ~/.vimrc


