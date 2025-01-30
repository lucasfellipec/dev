if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Aliases
alias ifactive="ifconfig | pcregrep -M -o '^[^\t:]+:([^\n]|\n\t)*status: active'"

# go
set --export GOPATH "$HOME/go"

function fish_right_prompt
  # intentionally left blank
end

set fish_greeting
set -g fish_autosuggestion_enabled 0

for color in (set | grep -Eo '^fish_color_[a-zA-Z0-9_]+')
    set $color normal
end

export XDG_CONFIG_HOME="$HOME/.config"
set VIM nvim

export PERSONAL="$XDG_CONFIG_HOME/personal/"
export DEV_ENV="$HOME/dev"
for i in (find -L $PERSONAL -type f)
    source $i
end

export GOPATH="$HOME/.local/go"
export GIT_EDITOR="$VIM"
export DEV_ENV_HOME="$HOME/personal/dev"

export PATH="$PATH:$HOME/.local/scripts"
export PATH="$PATH:$HOME/.local/bin"

export PATH="$PATH:/opt/homebrew/bin"
export PATH="$PATH:/opt/homebrew/sbin"
export PATH="$HOME/.local/.npm-global/bin:$PATH"
export PATH="$HOME/.local/scripts:$PATH"
export PATH="$HOME/.local/bin:$PATH"
