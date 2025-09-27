#
# ~/.bash_profile
#

export XDG_CONFIG_HOME="$HOME/.config"
VIM="nvim"

PERSONAL="$XDG_CONFIG_HOME/personal"
DEV_ENV="$HOME/dev"

for i in $(find -L "$PERSONAL" -type f); do
    source "$i"
done


export GOPATH="$HOME/.local/go"
export GIT_EDITOR="$VIM"
export DEV_ENV_HOME="$HOME/personal/dev"
export DENO_INSTALL="$HOME/.deno"
export N_PREFIX="$HOME/.local/n"

dev_env() {
    :
}

if [[ $- == *i* && -z $INSIDE_EMACS ]]; then
    [ -f ~/.fzf.bash ] && source ~/.fzf.bash
    bind '"\C-f":"tmux-sessionizer\n"'
fi

export PATH="$HOME/.local/.npm-global/bin:$PATH"
export PATH="$HOME/.local/scripts:$PATH"
export PATH="$HOME/.local/odin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.local/npm/bin:$PATH"
export PATH="$HOME/.local/n/bin:$PATH"
export PATH="$HOME/.deno/bin:$PATH"
export PATH="$HOME/.bun/bin:$PATH"
export PATH="$HOME/.local/go/bin:$PATH"
export PATH="/usr/local/go/bin:$PATH"
export PATH="$HOME/.local/zig-linux-x86_64-0.13.0:$PATH"
export PATH="$HOME/.nimble/bin:$PATH"
