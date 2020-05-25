#!/bin/bash

# remove unwanted files first
rm -rf ~/.zshrc
rm -rf ~/.vimrc
rm -rf ~/.tmux.conf

rm -rf ~/.config/ranger
rm -rf ~/.config/powerline

rm -rf ~/bin
rm -rf ~/.ssh/config

# add symlinks
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

ln -s ~/dotfiles/ranger ~/.config/ranger
ln -s ~/dotfiles/powerline ~/.config/powerline

ln -s ~/dotfiles/bin ~/bin
ln -s ~/dotfiles/.ssh/config ~/.ssh/config
