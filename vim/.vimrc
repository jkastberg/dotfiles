so ~/Setup/vim/.vimrc_plugins

set nocompatible
set autoread
set autoindent
set background=dark
set expandtab
set encoding=utf-8
set fileencoding=utf-8
set hidden
set history=100
set hlsearch
set ignorecase
set incsearch
set laststatus=2
set mouse=a
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
nnoremap <leader>q :bp<cr>:bd #<cr> 

nmap <leader>1 <Plug>AirlineSelectTab1
nmap <leader>2 <Plug>AirlineSelectTab2
nmap <leader>3 <Plug>AirlineSelectTab3
nmap <leader>4 <Plug>AirlineSelectTab4
nmap <leader>5 <Plug>AirlineSelectTab5
nmap <leader>6 <Plug>AirlineSelectTab6
nmap <leader>7 <Plug>AirlineSelectTab7
nmap <leader>8 <Plug>AirlineSelectTab8
nmap <leader>9 <Plug>AirlineSelectTab9
nmap <leader>- <Plug>AirlineSelectPrevTab
nmap <leader>+ <Plug>AirlineSelectNextTab

" Move lines using Alt+j/k
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+1<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

syntax on
colorscheme palenight
hi Normal guibg=NONE ctermbg=NONE

filetype on
filetype indent on

map <D-A-RIGHT> <C-w>l
map <D-A-LEFT> <C-w>h
map <D-A-DOWN> <C-w><C-w>
map <D-A-UP> <C-w>W

command! Autoread set autoread | au CursorHold * checktime | call feedkeys("lh")

