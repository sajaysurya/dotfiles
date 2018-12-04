#!/bin/bash

# remove unwanted files first
rm -f ~/.bashrc

# add symlinks
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/youtube-dl ~/.config/youtube-dl
ln -s ~/dotfiles/mpv.conf ~/.config/mpv/mpv.conf
ln -s ~/dotfiles/i3 ~/.config/i3
ln -s ~/dotfiles/i3blocks ~/.config/i3blocks
ln -s ~/dotfiles/dunst ~/.config/dunst
ln -s ~/dotfiles/ranger ~/.config/ranger
ln -s ~/dotfiles/tridactyl ~/.config/tridactyl
ln -s ~/dotfiles/applications ~/.local/share/applications
ln -s ~/dotfiles/bin ~/bin
ln -s ~/dotfiles/powerline ~/.config/powerline
