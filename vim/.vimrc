so ~/Setup/vim/.vimrc_plugins

set autoindent
set background=dark
set expandtab
set hidden
set history=100
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set mouse=a
set nocompatible
set nowrap
set number
set ruler
set shiftwidth=2
set showmatch
set scrolloff=1
set sidescrolloff=5
set smartcase
set smartindent
set smarttab
set t_ut=
set tabstop=2
set wildmenu

noremap <esc><esc> :nohl<cr>

let mapleader=","

syntax on

filetype on
filetype indent on

map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

command! Autoread set autoread | au CursorHold * checktime | call feedkeys("lh")



