#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='lsd'
alias cat='bat'
alias mc='mc -u'
alias vim='nvim'


PS1='[\u@\h \W]\$ '
