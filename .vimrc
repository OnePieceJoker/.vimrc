let mapleader=";"
inoremap jj <ESC>
set number
"set hlsearch
set incsearch
set nocompatible
set ignorecase
set shiftwidth=4
set expandtab
set softtabstop=-1

syntax enable
filetype plugin on

set path+=**

set wildmenu

" Vim-Plug
" call plug#begin('~/.vim/plugged')
" Plug 'tpope/vim-fugitive'
" 
" Plug 'tpope/vim-surround'
" 
" Plug 'scrooloose/nerdtree'
" 
" Plug 'neoclide/coc.nvim'
" call plug#end()

nnoremap <leader>fd :e ~/.vim/.vimrc<CR>
nnoremap <leader>f :FZF<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <leader>w <C-w>w

" Nerd Tree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>
" Start NERDTree. If a file is specified, move the cursor to its window.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_id") | wincmd p | endif
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

let g:airline_theme='badwolf'

" vistal
nnoremap <leader>t :Vista!!<CR>
let g:vista_default_executive = 'ctags'
