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

# forgit
source $HOME/tools/forgit/forgit.plugin.zsh
export PATH="$PATH:$FORGIT_INSTALL_DIR/bin"

# show when running in a shell that was spawned by ranger
if [ -n "$RANGER_LEVEL" ]; then export PS1="[ranger]$PS1"; fi

# starship
eval "$(starship init zsh)"

# homebrew
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
eval "$(/opt/homebrew/bin/brew shellenv)"

# nodenv
eval "$(nodenv init -)"

# pnpm
export PNPM_HOME="$HOME/Library/pnpm"
export PATH="$PNPM_HOME:$PATH"
