#!/bin/bash

# put the following in the custom command pane of dropdown terminal gnome extension config
# tmux new-session; split-window -h; split-window -v ~/dotfiles/python.init.sh; select-pane -L

# now a days i'm using i3, and the previous comment is irrelevant

python3 -i ~/dotfiles/python.init.py
