# External Zsh tools

# iTerm2
test -e "${HOME}/.iterm2_shell_integration.zsh" && source "${HOME}/.iterm2_shell_integration.zsh"

# GPG (GNU Privacy Guard or GnuPG)
export GPG_TTY=$(tty)

## zsh-completions
fpath=(/usr/local/share/zsh-completions $fpath) # activate zsh-completions
fpath=($HOME/.zsh/zsh-completions $fpath)       # activate zsh-completions

# broot
source $HOME/.config/broot/launcher/bash/br

# zsh-autosuggestions
source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE="fg=213"

# zsh-syntax-highlighting
export ZSH_HIGHLIGHT_HIGHLIGHTERS_DIR=/opt/homebrew/share/zsh-syntax-highlighting/highlighters

# show when running in a shell that was spawned by ranger
if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi

# starship
eval "$(starship init zsh)"
# set window title via starship
function set_win_title(){
    echo -ne "\033]0; $(realpath .) \007"
}
precmd_functions+=(set_win_title)

# homebrew
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"

# nodenv
eval "$(nodenv init -)"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"

# set Ripgrep configuration file
export RIPGREP_CONFIG_PATH="$HOME/.config/ripgreprc"

## ranger
# show when running in a shell that was spawned by ranger
if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi

# C-g to quit and cd into directory
function ranger {
    local IFS=$'\t\n'
    local tempfile="$(mktemp -t tmp.XXXXXX)"
    local ranger_cmd=(
        command
        ranger
        --cmd="map <c-g> chain shell echo %d > "$tempfile"; quitall"
    )

    ${ranger_cmd[@]} "$@"
    if [[ -f "$tempfile" ]] && [[ "$(cat -- "$tempfile")" != "$(echo -n `pwd`)" ]]; then
        cd -- "$(cat "$tempfile")" || return
    fi
    command rm -f -- "$tempfile" 2>/dev/null
}
