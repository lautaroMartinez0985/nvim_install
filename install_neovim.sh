#!/bin/bash

pkg update -y && pkg upgrade -y
pkg install -y curl
pkg install -y neovim

mkdir -p ~/.config/nvim

cat <<EOF > ~/.config/nvim/init.vim
call plug#begin('~/.local/share/nvim/plugged')
Plug 'preservim/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-fugitive'
Plug 'hrsh7th/nvim
