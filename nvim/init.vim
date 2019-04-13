" Plug
let plug_dir = $XDG_DATA_HOME . '/nvim/plugged'
call plug#begin(plug_dir)
Plug 'cohama/lexima.vim'
Plug 'luochen1990/rainbow'
Plug 'ekalinin/Dockerfile.vim'
Plug 'tpope/vim-surround'
Plug 'tomtom/tcomment_vim'
call plug#end()

" ruler
set number
set relativenumber

" tabstop
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2
set autoindent
set smartindent

" parentheses
let g:rainbow_active=1
set showmatch
set matchpairs+=<:>

" misc
set mouse=a
set clipboard+=unnamedplus 

" colorscheme
set termguicolors

syntax on

