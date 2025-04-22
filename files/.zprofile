[[ -f ~/.zshrc ]] && . ~/.zshrc
[ "$(tty)" = "/dev/tty1" ] && exec sway --unsupported-gpu
#[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
