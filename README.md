# dotfiles
Ok, I know it is not a dotenv - but still a good start point and reference for my self

## VIM

This is my .vimrc content, very simple but very useful.

```
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

call plug#end()

```

## tmux

Multiplexer terminal, to handle with windows(split panels) and sessions in terminals.

sudo aptitude install tmux

### Simple tmux guide

  * Create nem session: tmux new -s \<name\>
  * Split window C-b % (Vertical)
  * Split window C-b " (Horizontal)
  * Navigate betwen panels C-b arrow
  * Close panels C-b d
  * Create new window C-b c
  * Session handling: tmux ls
  * Session atach: tmux  attach -t \<name\>
  * Rename session C-b $
  * Help: C-b ?

## pyenv
A python env manager:

  * URL: https://github.com/pyenv/pyenv


```
$ pyenv install 3.6.0
$ pyenv global 3.6.0
$ pyenv global system
```

*Important:* Before to try install in debian 9 look at https://github.com/pyenv/pyenv/wiki/Common-build-problems  

## Create local virtual environments
Python 3 offer a simple way to create virtual environments(venv), lets get start:

```
$ mkdir myapp; cd myapp
$ python3 -m venv venv
$ source venv/bin/active.fish
```

The main advantage to use it, is because now we have a local copy of python installation.

## direnv
I switch to direnv to automate boring actions, like setup local enviroment VARS. Now I just go to /my/project/dir and all will setup auto-magicly

```
$ sudo apt install direnv
```

