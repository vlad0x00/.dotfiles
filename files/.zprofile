[[ -f ~/.zshrc ]] && . ~/.zshrc
[ "$(tty)" = "/dev/tty1" ] && exec sway --unsupported-gpu
