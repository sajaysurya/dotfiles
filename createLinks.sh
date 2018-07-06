#!/bin/bash

# remove unwanted files first
rm -f ~/.bashrc

# add symlinks
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/youtube-dl ~/.config/youtube-dl
ln -s ~/dotfiles/mpv.conf ~/.config/mpv/mpv.conf
