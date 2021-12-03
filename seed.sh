#!/bin/bash

# setup zsh (after installing zsh and oh-my-zsh)
rm -rf ~/.zshrc
ln -s ~/dotfiles/.zshrc ~/.zshrc
# setup oh-my-zsh plugins
rm -rf ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions
rm -rf ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# setup oh-my-zsh theme
rm -rf ~/.oh-my-zsh/custom/themes/powerlevel10k
rm -rf ~/.p10k.zsh
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
ln -s ~/dotfiles/.p10k.zsh ~/.p10k.zsh

# setup tmux (after installing tmux)
rm -rf ~/.tmux.conf
ln -s ~/dotfiles/.tmux.conf ~/.tmux.conf
# setup tmux plugins
rm -rf ~/.tmux
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
tmux source ~/.tmux.conf
~/.tmux/plugins/tpm/bin/install_plugins

# setup neovim (after installing neovim)
rm -rf ~/.config/nvim
ln -s ~/dotfiles/nvim ~/.config/nvim
# setup neovim plugins
rm -rf ~/.local/share/nvim/plugged
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
nvim +PlugInstall +qall

# collection of binaries
rm -rf ~/bin
ln -s ~/dotfiles/bin ~/bin

# list of ssh connections
rm -rf ~/.ssh/config
ln -s ~/dotfiles/.ssh/config ~/.ssh/config
