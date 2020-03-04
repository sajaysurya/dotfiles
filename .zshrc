# zmodload zsh/zprof  # uncomment to profile the script
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# vi keybindings
bindkey -v
KEYTIMEOUT=1  # wait 100ms after pressing esc

# aliases for ease
alias ls="ls -lahG"
alias rm="rm -i"

# add bin folder to path
PATH=$PATH:~/bin
PATH=$PATH:~/.local/bin

# configure powerline
powerline-daemon -q
. /usr/local/lib/python3.7/site-packages/powerline/bindings/zsh/powerline.zsh

# get rsa password after login, before starting x
eval $(keychain --eval --quiet id_rsa)

# to start x at login (only if no other display is running)
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
    # start the window manager
    exec startx
fi
