syntax on
set number
set nowrap
set nocompatible
set wildmenu
set cmdheight=2


" Personal notes:
" 	To be more clear the color scheme, I'd use a terminal with dark
" 	solarized color scheme support.
" 	Using pluggin system:
" 		PlugInstall
" 		PlugClean

"	How to install vim pluggins system, vim plug
"	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"	    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

call plug#begin('~/.vim/plugged')

Plug 'https://github.com/msanders/snipmate.vim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'


call plug#end()

" Vim-Airline Configuration
let g:airline_theme='minimalist'

