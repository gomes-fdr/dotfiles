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

~~## Vim setup~~

## micro - the text editor
I switch to micro, syntax hilight, snippets and git integration. I am missing code complete, but the simplicity compansates.

  * URL: https://micro-editor.github.io/

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

## VS Code
I am using vscode from Microsoft to code in python, it has code complete, git integration and snippets, all I need to be productive.
Using the setup environment described before, just call:

```$ code .
 ```

 The vscode already use the local venv created before.
 