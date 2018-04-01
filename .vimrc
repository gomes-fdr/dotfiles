syntax on
set number
set nowrap
set nocompatible
set wildmenu
set cmdheight=2

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/msanders/snipmate.vim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


call plug#end()

" Vim-Airline Configuration
let g:airline_theme='minimalist'

