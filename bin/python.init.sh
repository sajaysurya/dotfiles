#!/bin/bash

# put the following in the custom command pane of dropdown terminal gnome extension config
# tmux new-session; split-window -h; split-window -v ~/dotfiles/python.init.sh; select-pane -L

# now a days i'm using i3, and the previous comment is irrelevant

ipython3 --TerminalInteractiveShell.editing_mode=vi \
    --no-confirm-exit \
    -i ~/dotfiles/python.init.py
