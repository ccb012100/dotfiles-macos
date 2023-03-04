#!/usr/bin/env zsh
# External Zsh tools

## homebrew
eval $(/opt/homebrew/bin/brew shellenv)
# prefer GNU coreutils over BSD variants
export PATH="$(brew --prefix coreutils)/libexec/gnubin:/usr/local/bin:$PATH"
export MANPATH="$HOMEBREW_PREFIX/opt/coreutils/libexec/gnuman:$MANPATH"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

## broot
source /Users/cbocardo/.config/broot/launcher/bash/br

## zsh-completions
FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
fpath=($HOME/.zsh/zsh-completions $fpath)

## zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=213"

## zsh-syntax-highlighting
source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters
source $(brew --prefix zsh-syntax-highlighting)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# show when running in a shell that was spawned by ranger
if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi

## starship
eval "$(starship init zsh)"

# set window title via starship
function set_win_title(){
    echo -ne "\033]0; $(realpath .) \007"
}

precmd_functions+=(set_win_title)

# set Ripgrep configuration file
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgreprc"

eval "$(zoxide init zsh)"