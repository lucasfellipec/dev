#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '
PS1='[\u@\[\e[31m\]\h\[\e[0m\] \W]\$ '

if [ -f /etc/bash_completion ]; then
  . /etc/bash_completion
fi

[ -f ~/.bash_profile ] && source ~/.bash_profile
