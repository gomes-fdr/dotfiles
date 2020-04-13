" General
set number	                " Show line numbers
set linebreak	                " Break lines at word (requires Wrap lines)
set showbreak=+++ 	        " Wrap-broken line prefix
set textwidth=100	        " Line wrap (number of cols)
set showmatch	                " Highlight matching brace
 
set hlsearch	                " Highlight all search results
set smartcase	                " Enable smart-case search
set ignorecase	                " Always case-insensitive
set incsearch	                " Searches for strings incrementally
 
set autoindent	                " Auto-indent new lines
set shiftwidth=4	        " Number of auto-indent spaces
set smartindent	                " Enable smart-indent
set smarttab	                " Enable smart-tabs
set softtabstop=4	        " Number of spaces per Tab
 
" Advanced
set ruler	                " Show row and column ruler information
set undolevels=1000	        " Number of undo levels
set backspace=indent,eol,start	" Backspace behaviour
 
" Novidades aprendidas com https://www.youtube.com/watch?v=XA2WjJbmmoM&t=325s
" Para fazer fuzzy find use o * em parte do nome
set path+=**
set wildmenu
set laststatus=2

" Para abrir um file explorer no VIM, sem nerdtree
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" VIM plug 
" https://github.com/junegunn/vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/editorconfig/editorconfig-vim'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdcommenter'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'https://github.com/msanders/snipmate.vim'
Plug 'zxqfl/tabnine-vim'

call plug#end()

let g:lightline = {
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'gitbranch#name'
      \ },
      \ }
