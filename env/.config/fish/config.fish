if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Aliases
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"
alias copy="tr -d '\n' | pbcopy"
alias vim="nvim"
alias commit_message="git diff --cached | cody chat --stdin -m 'Write a commit message for this diff, do not use capital letters and use the angular conventional commits.' | awk '/^```/{if (p) exit; p=1;next} p' | pbcopy"

# tmux
set tmux (which tmux)
alias tmux="tmux -2"

# go
set --export GOPATH "$HOME/go"

function fish_right_prompt
  # intentionally left blank
end

export PATH="$PATH:$HOME/.local/bin"
export XDG_CONFIG_HOME="$HOME/.config"
export DEV_ENV_HOME="$HOME/personal/dev"

set fish_greeting
set -g fish_autosuggestion_enabled 0

for color in (set | grep -Eo '^fish_color_[a-zA-Z0-9_]+')
    set $color normal
end
