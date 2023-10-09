syntax on
set nu                "Show line number
set clipboard=unnamed "Use system clipboard

"Change Cursor to bar
"let &t_SI = "\e[2 q"
"let &t_EI = "\e[6 q"

"Delete trailing whitespace on save
autocmd BufWritePre * :%s/\s\+$//e

"Tab settings
set expandtab
set tabstop=4 shiftwidth=4

"Indent settings
set autoindent
set smartindent

"Fold indentations
set foldmethod=syntax
set foldnestmax=1

"Necessary for status lite bar
set laststatus=2

"""""""""""""""""""""  VUNDLE """""""""""""""""""""""
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" Auto Completion YCM
Plugin 'Valloric/YouCompleteMe'
" Nerdtree Path Viewer
Plugin 'preservim/nerdtree'
" Fuzzy search
Plugin 'junegunn/fzf'
" Lightline makes bottom status bar nicer
Plugin 'itchyny/lightline.vim'
" Gitgutter shows git changes on left
Plugin 'airblade/vim-gitgutter'
" Vim-fuGITive git cmds for vim
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on    " required
