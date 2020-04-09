# dotfiles
Ok, I know it is not a dotenv - but still a good start point and reference for my self

## VIM

This is my .vimrc content, very simple but very useful.

~~[Vim Boostrap](https://vim-bootstrap.com)~~ 
[VIM config](https://vimconfig.com/)

## tmux

Multiplexer terminal, to handle with windows(split panels) and sessions in terminals.

sudo aptitude install tmux

### Simple tmux guide

  * Create nem session: tmux new -s \<name\>
  * Split window C-a % (Vertical)
  * Split window C-a " (Horizontal)
  * Navigate betwen panels C-a arrow
  * Close panels C-a d
  * Create new window C-a c
  * Session handling: tmux ls
  * Session atach: tmux  attach -t \<name\>
  * Rename session C-a $
  * Help: C-a ?

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
$ <C-a> is the main key combine, instead od <C-a>
$ <C-a> D load my pre-set DEV enviroment
```

## To build DWM

```
sudo apt update
sudo apt upgrade

sudo apt install -f -y curl wget git
sudo apt install -f -y xorg xgd-user-dirs
sudo apt install -f -y make gcc libx11-dev libxft-dev libxinerama-dev xorga compton
#sudo apt install -f -y fonts-font-awesome fonts-roboto fonts-moto fonts-mplus xgd-user-dirs
#sudo apt install -f -y slim

# Alguns apps iniciais
sudo apt install -f -y firefox-esr
sudo apt install -f -y file-roller pcmanfm neofetch geany

### creating dirs like "Pictures", "Downloads" etc.
xdg-user-dirs-update
mkdir projects

## DWM last version
git clone https://git.suckless.org/dwm ~/projects
git clone https://git.suckless.org/st ~/projects
git clone https://git.suckless.org/dmenu ~/projects

## install oh-my-bash
sh -c "$(curl -fsSL https://raw.github.com/ohmybash/oh-my-bash/master/tools/install.sh)"

```
