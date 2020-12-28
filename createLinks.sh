#!/bin/bash

# remove unwanted files first
rm -rf ~/.zshrc
rm -rf ~/.vimrc
rm -rf ~/.pdbrc
rm -rf ~/.tmux.conf

rm -rf ~/.config/powerline

rm -rf ~/bin
rm -rf ~/.ssh/config

rm -rf /mnt/c/Users/Sajay/vim.bat

# add symlinks
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.pdbrc ~/.pdbrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf

ln -s ~/dotfiles/powerline ~/.config/powerline

ln -s ~/dotfiles/bin ~/bin
ln -s ~/dotfiles/.ssh/config ~/.ssh/config

cp ~/dotfiles/vim.bat /mnt/c/Users/Sajay/vim.bat
