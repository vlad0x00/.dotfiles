#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

[[ -f ~/.env ]] && source ~/.env
[[ -f ~/.alias ]] && source ~/.alias
[[ -r "/usr/share/z/z.sh" ]] && source /usr/share/z/z.sh

PS1='[\u@\h \W]\$ '
