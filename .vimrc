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
set relativenumber
set encoding=utf8
set clipboard=unnamed
set nobackup
set writebackup
set guifont=DroidSansMono_Nerd_Font:h11
set encoding=UTF-8

" Novidades aprendidas com https://www.youtube.com/watch?v=XA2WjJbmmoM&t=325s
" Para fazer fuzzy find use o * em parte do nome
set path+=**
set wildmenu
"set rtp+=~/.vim/plugged/tabnine-vim

" Para abrir um file explorer no VIM, sem nerdtree
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_altv=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" To move lines UP(n) and DOWN(m)
"nmap n :m +1<CR>
"nmap m :m -2<CR>
map <tab> <Plug>CompletorCppJumpToPlaceholder

" VIM plug 
" https://github.com/junegunn/vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
call plug#begin('~/.vim/plugged')

Plug 'itchyny/lightline.vim'
Plug 'itchyny/vim-gitbranch'
Plug 'https://github.com/tmhedberg/SimpylFold'
Plug 'https://github.com/msanders/snipmate.vim'
Plug 'https://github.com/editorconfig/editorconfig-vim'
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

let g:SimpylFold_docstring_preview=1

