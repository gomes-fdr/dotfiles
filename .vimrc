syntax on
set number
set nowrap
set nocompatible
set wildmenu
set cmdheight=2
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set cursorline
set showmatch
set nobackup

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/msanders/snipmate.vim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sheerun/vim-polyglot'
Plug 'edkolev/tmuxline.vim'


call plug#end()

" Vim-Airline Configuration
let g:airline_theme='minimalist'

