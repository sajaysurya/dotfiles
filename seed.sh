#!/bin/bash

# setup tmux
rm -rf ~/.tmux.conf
ln -s ~/dotfiles/.tmux.conf  ~/.tmux.conf
# setup tmux plugins
rm -rf ~/.tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf
~/.tmux/plugins/tpm/bin/install_plugins
~/.tmux/plugins/tpm/bin/clean_plugins

# list of ssh connections
rm -rf ~/.ssh/config
ln -s ~/dotfiles/.ssh/config ~/.ssh/config

# setup python debugger
rm -rf ~/.pdbrc
ln -s ~/dotfiles/.pdbrc ~/.pdbrc

# setup spacemacs
rm -rf ~/.spacemacs
ln -s ~/dotfiles/.spacemacs  ~/.spacemacs

# mpv configuration
rm -rf ~/.config/mpv
ln -s ~/dotfiles/mpv ~/.config/mpv

# tridactyl configuration
rm -rf ~/.config/tridactyl
ln -s ~/dotfiles/tridactyl ~/.config/tridactyl

# collertion of binaries
rm -rf ~/bin
ln -s ~/dotfiles/bin ~/bin
