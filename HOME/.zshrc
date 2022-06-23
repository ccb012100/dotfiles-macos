# Zsh configuration file
# $HOME/.zshrc

export PATH="$PATH:$HOME/bin"
export EDITOR="vim"             # $EDITOR opens in terminal

## zsh options
setopt auto_cd
setopt cdable_vars              # directory aliases for cd command
setopt complete_in_word         # complete within a word/phrase
setopt correctall               # spelling correction for commands
setopt ignoreeof                # Ctrl-D won't kill the session
setopt no_case_glob             # case-insensitive globbing
setopt noclobber                # don't overwrite existing files

## zsh history
HISTFILE=$HOME/zsh/zsh_history
HISTSIZE=50000
SAVEHIST=10000
setopt inc_append_history share_history hist_expire_dups_first hist_find_no_dups hist_ignore_dups hist_ignore_space hist_reduce_blanks hist_verify

## directory history
## see http://zsh.sourceforge.net/Intro/intro_6.html
DIRSTACKSIZE=10
setopt autopushd pushdminus pushdsilent pushdtohome
alias dh='dirs -v'

## Keybindings
bindkey -e                      # emacs key-bindings

## Enable C-x C-e to edit command line
autoload -U edit-command-line
zle -N edit-command-line
bindkey '^x^e' edit-command-line

## additional personal config files
source $HOME/.zsh/aliases.zsh
source $HOME/.zsh/completions.zsh
source $HOME/.zsh/fd.zsh
source $HOME/.zsh/funcs.zsh
source $HOME/.zsh/fzf_config.zsh
source $HOME/.zsh/tools.zsh
source $HOME/.zsh/unalias.zsh
source $HOME/.local/local_config.zsh
