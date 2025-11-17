#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export XDG_CONFIG_HOME="$HOME/.config"

alias ls='ls --color=auto'
alias grep='grep --color=auto'
# PS1='[\u@\h \W]\$ '
PS1='[\u@\[\e[31m\]\h\[\e[0m\] \W]\$ '

PERSONAL="$XDG_CONFIG_HOME/personal"
for i in `find -L $PERSONAL -type f`; do
    source $i
done

if [[ $- == *i* && -z $INSIDE_EMACS ]]; then
    [ -f ~/.fzf.bash ] && source ~/.fzf.bash
    bind '"\C-h":"tmux-sessionizer\n"'
fi

# [ -f ~/.fzf.bash ] && source ~/.fzf.bash
