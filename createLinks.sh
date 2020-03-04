#!/bin/bash

# remove unwanted files first
rm -f ~/.zshrc
rm -rf ~/.config/gtk-3.0
rm -rf ~/.config/i3

# add symlinks
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.ssh/config ~/.ssh/config
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/rofi ~/.config/rofi
ln -s ~/dotfiles/ranger ~/.config/ranger
ln -s ~/dotfiles/bin ~/bin
ln -s ~/dotfiles/powerline ~/.config/powerline
