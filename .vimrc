syntax on
filetype plugin on

set number
set wrap
set linebreak
set cmdheight=2
set nocompatible
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set nobackup
set showmatch
set laststatus=2

" Novidades aprendidas com https://www.youtube.com/watch?v=XA2WjJbmmoM&t=325s
" Para fazer fuzzy find use o * em parte do nome
set path+=**
set wildmenu

" Para abrir um file explorer no VIM, sem nerdtree
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" To move lines UP(n) and DOWN(m)
nmap n :m +1<CR>
nmap m :m -2<CR>


" VIM plug 
" https://github.com/junegunn/vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/msanders/snipmate.vim'
Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'

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
