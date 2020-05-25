#!/bin/bash

# remove unwanted files first
rm -rf ~/.zshrc
rm -rf ~/.vimrc
rm -rf ~/.xinitrc
rm -rf ~/.tmux.conf
rm -rf ~/.Xresources
rm -rf ~/.pam_environment

rm -rf ~/.config/i3
rm -rf ~/.config/mpv
rm -rf ~/.config/rofi
rm -rf ~/.config/dunst
rm -rf ~/.config/ranger
rm -rf ~/.config/i3blocks
rm -rf ~/.config/powerline
rm -rf ~/.config/tridactyl
rm -rf ~/.config/youtube-dl
rm -rf ~/.config/picom.conf
rm -rf ~/.config/mimeapps.list

rm -rf ~/bin
rm -rf ~/.ssh/config

# add symlinks
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.xinitrc ~/.xinitrc
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/.Xresources ~/.Xresources
ln -s ~/dotfiles/.pam_environment ~/.pam_environment

ln -s ~/dotfiles/i3 ~/.config/i3
ln -s ~/dotfiles/mpv ~/.config/mpv
ln -s ~/dotfiles/rofi ~/.config/rofi
ln -s ~/dotfiles/dunst ~/.config/dunst
ln -s ~/dotfiles/ranger ~/.config/ranger
ln -s ~/dotfiles/i3blocks ~/.config/i3blocks
ln -s ~/dotfiles/powerline ~/.config/powerline
ln -s ~/dotfiles/tridactyl ~/.config/tridactyl
ln -s ~/dotfiles/youtube-dl ~/.config/youtube-dl
ln -s ~/dotfiles/picom.conf ~/.config/picom.conf
ln -s ~/dotfiles/mimeapps.list ~/.config/mimeapps.list

ln -s ~/dotfiles/bin ~/bin
ln -s ~/dotfiles/.ssh/config ~/.ssh/config
