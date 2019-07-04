set nocompatible
filetype on
syntax on
set background=dark
nnoremap <esc><esc> :nohl<cr>
set number
set hidden
set history=100
filetype indent on
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
set term=builtin_ansi
map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W
command! Autoread set autoread | au CursorHold * checktime | call feedkeys("lh")
set t_ut=



