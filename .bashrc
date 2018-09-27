export PS1="\[$(tput bold)\]\[$(tput setaf 4)\]$ > \[$(tput sgr0)\]"
export PS2="\[$(tput bold)\]\[$(tput setaf 4)\]>> \[$(tput sgr0)\]"
alias ls="ls --color -lah"
alias rm="rm -i"

. /home/sajay/miniconda3/etc/profile.d/conda.sh

# get rsa password after login, before starting x
eval $(keychain --eval --quiet id_rsa)

# to start x at login
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
