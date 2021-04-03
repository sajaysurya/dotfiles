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
tmux source ~/.tmux.conf

# setup vim (after installing vim)
rm -rf ~/.vimrc
ln -s ~/dotfiles/.vimrc ~/.vimrc
# setup vim plugins
rm -rf ~/.vim
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
vim +PlugInstall +qall

# install neovim
rm -rf ~/bin/nvim.appimage
wget -O ~/bin/nvim.appimage https://github.com/neovim/neovim/releases/download/nightly/nvim.appimage
chmod +x ~/bin/nvim.appimage
# setup neovim
rm -rf ~/.config/nvim
ln -s ~/dotfiles/nvim ~/.config/nvim
# setup neovim plugins
rm -rf ~/.local/share/nvim/plugged
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
~/bin/nvim.appimage --appimage-extract-and-run +PlugInstall +qall

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
