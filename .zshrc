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

# for vcxsrv clipboard (allow it in windows defender firewall)
export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2}'):0
# aliases for ease
alias ls="ls --color -lah"
alias rm="rm -i"
hash -d home=/mnt/c/Users/Sajay

# add bin folder to path
PATH=$PATH:~/bin
PATH=$PATH:~/.local/bin

# configure powerline
powerline-daemon -q
. /usr/share/powerline/bindings/zsh/powerline.zsh

# get rsa password after login, before starting x
eval $(keychain --eval --quiet id_rsa)

# to run vim :D
if [[ $1 == eval ]]
then
    "$@ && exit"
set --
fi
