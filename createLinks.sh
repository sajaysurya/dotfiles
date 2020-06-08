#!/bin/bash

# remove unwanted files first
rm -rf ~/.zshrc
rm -rf ~/.vimrc
rm -rf ~/.ssh/config
rm -rf ~/.tmux.conf
rm -rf ~/.config/rofi
rm -rf ~/.config/ranger
rm -rf ~/bin
rm -rf ~/.config/powerline

# add symlinks
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.ssh/config ~/.ssh/config
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/rofi ~/.config/rofi
ln -s ~/dotfiles/ranger ~/.config/ranger
ln -s ~/dotfiles/bin ~/bin
ln -s ~/dotfiles/powerline ~/.config/powerline
