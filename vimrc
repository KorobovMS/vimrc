set nocompatible

filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'altercation/vim-colors-solarized'
call vundle#end()
filetype plugin indent on

" Common
syntax on
set encoding=utf-8
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=-1
set ruler
set number
set incsearch
set ignorecase

" GUI
set guifont=DejaVu\ Sans\ Mono\ 11
set guioptions-=m
set guioptions-=T
set guioptions+=b
set background=dark
color solarized

" Tabs
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent
set backspace=indent,eol,start

" Backup
set backupdir=~/vimtmp/backup
set directory=~/vimtmp/swap

map <F4> :NERDTreeToggle<CR>

nnoremap j gj
nnoremap k gk

