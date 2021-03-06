" Common
set nocompatible
filetype plugin indent on
syntax on
set encoding=utf-8
set keymap=russian-jcukenwin
set iminsert=0
set imsearch=-1
set incsearch
set ignorecase
set backspace=indent,eol,start
set hidden
set linebreak
set breakindent
set breakindentopt=shift:4

" Appearance
set ruler
set number
set relativenumber
set background=dark
set wildmenu
set laststatus=2
if has('mouse')
    set mouse=a
endif
set ttimeout
set ttimeoutlen=100

" Backup/swap
set noswapfile
set nobackup

" Tabs
set tabstop=4
set expandtab
set shiftwidth=4
set softtabstop=4
set autoindent

" netrw
let g:netrw_banner=0

" Commands
command! ToCrLf %s/\([^<C-M>]\)$/\1\<C-M>/g
command! ToLf %s/<C-M>$//g
