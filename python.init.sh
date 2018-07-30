#!/bin/bash

# put the following in the custom command pane of dropdown terminal gnome extension config
# tmux new-session; split-window -h; split-window -v ~/dotfiles/python.init.sh; select-pane -L

python -i ~/dotfiles/python.init.py
