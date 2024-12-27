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
    set mouse=nvi
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

function! Buffers()
    let bufs = range(1, bufnr('$'))
    call filter(bufs, 'buflisted(v:val)')
    return map(bufs, 'bufname(v:val)')
endfunction

vnoremap <silent> <Leader>yt :w !tmux load-buffer -<CR><CR>
vnoremap <silent> <Leader>yx :w !xclip<CR><CR>
vnoremap <silent> <Leader>yw :w !wl-copy<CR><CR>
nnoremap <silent> <Leader>f :FZF<CR>
nnoremap <silent> <Leader>b :call fzf#run({'source': Buffers(), 'sink': 'b'})<CR>

nnoremap <Leader>gr :grep  -RI .<Left><Left><Left><Left><Left><Left>

nnoremap <Leader>s :let x = job_start('sh', { 'in_io': 'buffer', 'in_buf': bufnr('%'), 'out_io': 'buffer', 'out_buf': bufnr('%')})<CR>

nnoremap Q <nop>
