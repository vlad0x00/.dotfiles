#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc
[[ -f ~/.env ]] && . ~/.env
[[ -f ~/.alias ]] && . ~/.alias
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && exec startx
