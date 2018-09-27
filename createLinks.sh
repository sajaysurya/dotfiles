#!/bin/bash

# remove unwanted files first
rm -f ~/.bashrc

# add symlinks
ln -s ~/dotfiles/.xinitrc ~/.xinitrc
ln -s ~/dotfiles/.Xresources ~/.Xresources
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/youtube-dl ~/.config/youtube-dl
ln -s ~/dotfiles/mpv.conf ~/.config/mpv/mpv.conf
ln -s ~/dotfiles/compton.conf ~/.config/compton.conf
ln -s ~/dotfiles/i3 ~/.config/i3
ln -s ~/dotfiles/i3blocks ~/.config/i3blocks
ln -s ~/dotfiles/termite ~/.config/termite
ln -s ~/dotfiles/dunst ~/.config/dunst
ln -s ~/dotfiles/ranger ~/.config/ranger
ln -s ~/dotfiles/applications ~/.local/share/applications
ln -s ~/dotfiles/.tridactylrc ~/.tridactylrc
