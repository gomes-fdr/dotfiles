# dotfiles

## Shell
sudo aptitude install fish

### Replace in the system
chsh /usr/bin/fish
logout

### Install oh my fish
curl -L https://get.oh-my.fish | fish

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

## tmuxp
A manager of tmux workspaces

Install:
```
$ pip install tmuxp
```




## Vim setup
Personal notes:
  * To be more clear the color scheme, You should use a terminal with dark solarized color scheme support.
  * It is important that package vim-nox had been installed (debian 9).

Using pluggin system:
```
:PlugInstall
:PlugClean
```

How to install vim pluggins system, vim plug:

```
$ curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

## pyenv
A python env manager:

  * URL: https://github.com/pyenv/pyenv


```
$ pyenv install 3.6.0
$ pyenv global 3.6.0
$ pyenv global system
```

*Important:* Before to try install in debian 9 look at https://github.com/pyenv/pyenv/wiki/Common-build-problems  