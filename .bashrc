# configure powerline
powerline-daemon -q
POWERLINE_BASH_CONTINUATION=1
POWERLINE_BASH_SELECT=1
. /usr/share/powerline/bindings/bash/powerline.sh

# aliases for ease
alias ls="ls --color -lah"
alias rm="rm -i"

# conda configuration
. /home/sajay/miniconda3/etc/profile.d/conda.sh

# get rsa password after login, before starting x
eval $(keychain --eval --quiet id_rsa)

# to start x at login
if [[ ! $DISPLAY && $XDG_VTNR -eq 1 ]]; then
  exec startx
fi
