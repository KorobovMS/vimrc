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
set nohlsearch
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
set splitright
set splitbelow

colorscheme evening
set cursorline
set cursorlineopt=line
" hi CursorLine cterm=NONE ctermbg=darkgrey ctermfg=NONE
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

" Commands
command! ToCrLf %s/\([^<C-M>]\)$/\1\<C-M>/g
command! ToLf %s/<C-M>$//g

" Mappings
let mapleader = " "
nnoremap <silent> <F4> :Rexplore<CR>
nnoremap <C-]> :tjump <C-R><C-W><CR>
nnoremap <C-W>} :ptjump <C-R><C-W><CR>

vnoremap <Leader>y "+y
vnoremap <Leader>p "+p
vnoremap <Leader>d "+d

nnoremap Y y$

inoremap <C-L> <C-^>
cnoremap <C-L> <C-^>

cmap w!! w !sudo tee > /dev/null %

function! Dmenu(action, alt, prompt)
    let syscmd = a:alt . " | dmenu -l 20 -i -p \"" . a:prompt . "\""
    let syscmdres = system(l:syscmd)
    execute a:action . " " . l:syscmdres
endfunction

function! Buffers()
    let bufs = range(1, bufnr('$'))
    call filter(bufs, 'buflisted(v:val)')
    let names = map(bufs, 'bufname(v:val)')
    return join(names, '\n')
endfunction

nnoremap <Leader>f :call Dmenu("e", "find .", "open")<CR>
nnoremap <Leader>gl :call Dmenu("e", "git ls-files", "open")<CR>
nnoremap <Leader>b :call Dmenu("e", "echo -ne \"" . Buffers() . "\"", "buffer")<CR>

nnoremap <Leader>gr :grep  -RI .<Left><Left><Left><Left><Left><Left>
