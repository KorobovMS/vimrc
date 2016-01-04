set nocompatible

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
set guifont=DejaVu\ Sans\ Mono\ 10
set guioptions-=m
set guioptions-=T
set guioptions+=b
color desert

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

nnoremap j gj
nnoremap k gk

