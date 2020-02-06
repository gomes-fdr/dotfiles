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

## asdf
I switch to [ASDF A generic version manager](https://asdf-vm.com) - I did some notes in my blog about how to use it [my web notes](https://gomes-fdr.github.io/posts/2019/ferramentas-para-dev-asdf)

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

## oh-my-bash
I switch to oh-myi-bash using the theme `bakke` [site](https://ohmybash.github.io/)

## Web Squence Diagrams
I start to use this web tool [site](https://www.websequencediagrams.com)

## Off-line doc tool
I use Zeal [site](https://zealdocs.org/)

## Map mind
I use Heimer to create my mind map [site](https://github.com/juzzlin/Heimer)

## Tool to test http
I start to use siege, to install just use [site](https://github.com/JoeDog/siege):

```
apt install siege
```

### How to use it

```
siege -c 5 -r 1 http://localhost:5000/test
```

If you wanna more information, type `man siege`

## tmux again

I came back to use tmux instead terminator, now I just use .tmux.conf and some pre-sets to gain some facilities.

```
$ <C-a> is the main key combine, instead od <C-b>
$ <C-a> D load my pre-set DEV enviroment
```
