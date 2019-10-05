so ~/Setup/vim/.vimrc_plugins

set nocompatible
set background=dark
nnoremap <esc><esc> :nohl<cr>
set number
set hidden
set history=100
set mouse=a
set nowrap
set tabstop=2
set shiftwidth=2
set expandtab
set smartindent
set autoindent
set hlsearch
set ignorecase
set smartcase
set showmatch
set ruler
set t_ut=

syntax on

filetype on
filetype indent on

map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

command! Autoread set autoread | au CursorHold * checktime | call feedkeys("lh")



