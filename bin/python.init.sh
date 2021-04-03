#!/bin/bash

# put the following in the custom command pane of dropdown terminal gnome extension config (or tilda)
# tmux new-session; split-window -v ~/dotfiles/python.init.sh; select-pane -L

ipython3 --TerminalInteractiveShell.editing_mode=vi \
         --TerminalInteractiveShell.colors=lightbg \
         --no-confirm-exit \
         -i ~/dotfiles/python.init.py
