let mapleader=","

so ~/dotfiles/vim/.vimrc_plugins

set nocompatible
set autoindent
set smartindent
set autoread
set background=dark
set backspace=eol,start " Allow backspacing over linebreak, and over start of insert, but not over autoindent(add 'indent' to allow)
set encoding=utf-8
set fileencoding=utf-8
set expandtab
set formatoptions-=t " do not automatically wrap text when typing"
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
set scrolloff=1
set shiftwidth=2
set showmatch
set sidescrolloff=5
set smartcase
set smarttab
set t_ut=
set tabstop=2
set wildmenu
set wildignore+=*/tmp/*,*.so,*.swp,*.zip     

noremap <esc><esc> :nohl<cr>
nnoremap <leader>q :bp<cr>:bd #<cr> 

" Move lines using Alt+j/k
"nnoremap <Esc>j :m .+1<CR>==
"nnoremap <Esc>k :m .-2<CR>==
"inoremap <Esc>j <Esc>:m .+1<CR>==gi
"inoremap <Esc>k <Esc>:m .-2<CR>==gi
"vnoremap <Esc>j :m '>+1<CR>gv=gv
"vnoremap <Esc>k :m '<-2<CR>gv=gv

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


