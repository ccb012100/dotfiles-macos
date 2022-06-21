# zsh aliass

## cd
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

## ls
# replace ls with exa
alias ls='exa --git --icons'
alias tree='exa --tree'
alias l='ls'
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
alias lla='ls -la'
alias llt='exa -l -t modified --sort newest'
alias llat='exa -al -t modified --sort newest'

## built-in tools
# clear screen
alias cls='clear'
alias grep='grep --color=auto'
# last exit code
alias lec='echo $?'
# print $PATH formatted as one entry per line
alias path="sed 's/:/\n/g' <<< '$PATH'"

## external tools
# open current directory in VS Code
alias c.='code .'
alias difftastic='difft'
alias e='emacs'
alias emacs='emacsclient -nc -a=""'
alias g='git'
alias gf='git forgit'
alias gitconfig='nvim ~/.gitconfig'
# colorize json
alias jq='jq -C'
# prevent accidentally using npn instead of pnpm
alias npm="echo \"use _pn/pnpm_\""
alias py='python3'
alias r='ranger'
alias sesh='tmux new-session -A -s sesh'
alias v='vim'

## .zshrc
alias zedit="$EDITOR $HOME/.zshrc"
alias zsource="source $HOME/.zshrc"

## directory aliases
export ccb=$HOME/ccb012100
export dotfiles=$HOME/.dotfiles
export dotemacs=$HOME/.emacs.d
export notes=$HOME/ccb012100/notes
export zhell=$HOME/zsh

## global aliases
# pipe into fzf
alias -g zf='| fzf'
