#!/bin/bash

# remove unwanted files first
rm -f ~/.zshrc
rm -rf ~/.config/gtk-3.0
rm -rf ~/.config/i3

# add symlinks
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
ln -s ~/dotfiles/.pam_environment ~/.pam_environment
ln -s ~/dotfiles/.Xresources ~/.Xresources
ln -s ~/dotfiles/.xinitrc ~/.xinitrc
ln -s ~/dotfiles/.ssh/config ~/.ssh/config
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
ln -s ~/dotfiles/youtube-dl ~/.config/youtube-dl
ln -s ~/dotfiles/mpv ~/.config/mpv
ln -s ~/dotfiles/rofi ~/.config/rofi
ln -s ~/dotfiles/i3 ~/.config/i3
ln -s ~/dotfiles/i3blocks ~/.config/i3blocks
ln -s ~/dotfiles/dunst ~/.config/dunst
ln -s ~/dotfiles/ranger ~/.config/ranger
ln -s ~/dotfiles/tridactyl ~/.config/tridactyl
ln -s ~/dotfiles/applications ~/.local/share/applications
ln -s ~/dotfiles/bin ~/bin
ln -s ~/dotfiles/powerline ~/.config/powerline
ln -s ~/dotfiles/gtk-3.0 ~/.config/gtk-3.0
