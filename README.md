# dotfiles
Ok, I know it is not a dotenv - but still a good start point and reference for my self

## VIM

This is my .vimrc content, very simple but very useful.

```
syntax on
set number
set nowrap
set nocompatible
set cmdheight=2
set ts=4
set autoindent
set expandtab
set shiftwidth=4
set nobackup
set showmatch

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
nmap n: n +1<CR>
nmap m: m -2<CR>


" VIM plug 
" https://github.com/junegunn/vim-plug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
"
call plug#begin('~/.vim/plugged')

Plug 'https://github.com/msanders/snipmate.vim'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'

call plug#end()

" Vim-Airline Configuration
let g:airline_theme='minimalist'
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

## PC de casa

```
            .-/+oossssoo+/-.               fabiano@mozolido
        `:+ssssssssssssssssss+:`           ----------------
      -+ssssssssssssssssssyyssss+-         OS: Ubuntu 18.04.2 LTS x86_64
    .ossssssssssssssssssdMMMNysssso.       Host: 22V240-L.BK55P1 0.1
   /ssssssssssshdmmNNmmyNMMMMhssssss/      Kernel: 4.18.0-25-generic
  +ssssssssshmydMMMMMMMNddddyssssssss+     Uptime: 4 hours, 9 mins
 /sssssssshNMMMyhhyyyyhmNMMMNhssssssss/    Packages: 1724
.ssssssssdMMMNhsssssssssshNMMMdssssssss.   Shell: bash 4.4.20
+sssshhhyNMMNyssssssssssssyNMMMysssssss+   Resolution: 1920x1080
ossyNMMMNyMMhsssssssssssssshmmmhssssssso   DE: Xfce
ossyNMMMNyMMhsssssssssssssshmmmhssssssso   WM: Xfwm4
+sssshhhyNMMNyssssssssssssyNMMMysssssss+   WM Theme: Greybird
.ssssssssdMMMNhsssssssssshNMMMdssssssss.   Theme: Greybird [GTK2/3]
 /sssssssshNMMMyhhyyyyhdNMMMNhssssssss/    Icons: Elementary-xfce-darker [GTK2/3]
  +sssssssssdmydMMMMMMMMddddyssssssss+     Terminal: xfce4-terminal
   /ssssssssssshdmNNNNmyNMMMMhssssss/      Terminal Font: DejaVu Sans Mono 10
    .ossssssssssssssssssdMMMNysssso.       CPU: Intel Pentium N3530 (4) @ 2.165GHz
      -+sssssssssssssssssyyyssss+-         GPU: Intel Bay Trail
        `:+ssssssssssssssssss+:`           Memory: 2083MiB / 7855MiB
            .-/+oossssoo+/-.


```
