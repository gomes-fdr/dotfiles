# dotfiles

## Shell
sudo aptitude install fish

### Replace in the system
chsh /usr/bin/fish
logout

### Install oh my fish
curl -L https://get.oh-my.fish | fish

### Customize fish
I like very much of the theme clearance, to install do the this:
```
$ omf install clearance
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

~~tmuxp~~

~~Vim setup~~

~~micro - the text editor~~ 


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

```
$ code .
```

The vscode already use the local venv created before.

## Autoenv

It is a very nice project that bring some facilities to work with enviroment vars, check this out:

```
$ pip install autoenv
$ git clone https://github.com/loopbit/autoenv_fish
```

To have this work with fish on startup, do that:
```
$ vi ~/.config/fish/config.fish
```

And add this line:
```
source /home/frgomes/projects/autoenv_fish/activate.fish
```
To test it, create a new dir with a .env file, put some line that in it 'echo test', always you enter in this dir, 'test' will be printed - nice ;op - great possibilities!
 