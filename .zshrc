# zmodload zsh/zprof  # uncomment to profile the script

# auto complete menu
zmodload zsh/complist  # for menuselect
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select

# vi keybindings
bindkey -v
KEYTIMEOUT=1  # wait 100ms after pressing esc

# record history
export HISTSIZE=10000
export SAVEHIST=$HISTSIZE
export HISTFILE=~/.zsh_history
setopt inc_append_history
setopt share_history
setopt hist_ignore_all_dups
setopt hist_ignore_space

# aliases for ease
alias ls="ls --color -lah"
alias rm="rm -i"

# add bin folder to path
PATH=$PATH:~/bin
PATH=$PATH:~/.local/bin

# get rsa password after login, before starting x
eval $(keychain --eval --quiet id_rsa)
