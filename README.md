# dotfiles
Ok, I know it is not a dotenv - but still a good start point and reference for my self

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

~~tmux~~

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

### Export extensions used in VSCode
It is nice to copy your text editor preferences, that way you can feel always in home ;op To do it in VSCode it is simple, look that.

Machine with your extentions:

```
⟩ code --list-extensions | xargs -L 1 echo code --install-extension
code --install-extension 2gua.rainbow-brackets
code --install-extension alphabotsec.vscode-eclipse-keybindings
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension GreatMinds.gitflow4code
code --install-extension Gruntfuggly.todo-tree
code --install-extension ms-python.python
code --install-extension niradler.prettierthis
code --install-extension octref.vetur
code --install-extension peakchen90.vue-beautify
code --install-extension PKief.material-icon-theme
code --install-extension ritwickdey.LiveServer

~
⟩ date
ter mai 14 08:51:53 -03 2019

```

To install it, copy and paste in temrinal the output listed before, you can put it in a script too.

```
#!/bin/sh

code --install-extension 2gua.rainbow-brackets
code --install-extension alphabotsec.vscode-eclipse-keybindings
code --install-extension dbaeumer.vscode-eslint
code --install-extension eamodio.gitlens
code --install-extension GreatMinds.gitflow4code
code --install-extension Gruntfuggly.todo-tree
code --install-extension ms-python.python
code --install-extension niradler.prettierthis
code --install-extension octref.vetur
code --install-extension peakchen90.vue-beautify
code --install-extension PKief.material-icon-theme
code --install-extension ritwickdey.LiveServer

```

tip from: https://stackoverflow.com/questions/35773299/how-can-you-export-vs-code-extension-list

~~## Autoenv~~

## direnv
I switch to direnv to automate boring actions, like setup local enviroment VARS. Now I just go to /my/project/dir and all will setup auto-magicly

```
$ sudo apt install direnv
```

We just need to add this in ~/.config/direnv/direnvrc

```
activate_virtualenv() {
  export VIRTUAL_ENV=$1
  PATH_add "$VIRTUAL_ENV"
}
```
Then, when we use virtualenv + fish all things works like a charm.