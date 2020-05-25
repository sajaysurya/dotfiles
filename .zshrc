# zmodload zsh/zprof  # uncomment to profile the script

# auto complete menu
zmodload zsh/complist  # for menuselect
bindkey -M menuselect '^M' .accept-line  # avoid pressing enter twice
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# vi keybindings
bindkey -v
KEYTIMEOUT=1  # wait 100ms after pressing esc

# record history
SAVEHIST=10000
HISTFILE=~/.zsh_history
setopt inc_append_history
setopt share_history

# aliases for ease
alias ls="ls --color -lah"
alias rm="rm -i"

# add bin folder to path
PATH=$PATH:~/bin
PATH=$PATH:~/.local/bin

# configure powerline
powerline-daemon -q
. ~/.local/lib/python3.8/site-packages/powerline/bindings/zsh/powerline.zsh

# get rsa password after login, before starting x
eval $(keychain --eval --quiet id_rsa)

# breakpoint for python
export PYTHONBREAKPOINT=ipdb.set_trace
