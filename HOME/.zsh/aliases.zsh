# zsh aliass

# cd aliases
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# ls
alias ls='exa'                              # use exa as ls replacement
alias l='ls'
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
alias lla='ls -la'
alias llt='exa -l -t modified --sort newest'
alias llat='exa -al -t modified --sort newest'

## built-in tools
alias aptup='sudo apt update && sudo apt upgrade'
alias cls='clear'                           # clear screen
alias grep='grep --color=auto'
alias lec='echo $?'                         # last exit code
alias print-path='echo ${PATH//:/$"\n"}'    # print $PATH in human-readable format

# external tools
alias c.='code .'                           # open current directory in VS Code
alias dc='docker compose'
alias g='git'
alias gf='git forgit'
alias jq='jq -C'                            # colorize json
alias npm='echo "use pn/pnpm"'
alias pn='pnpm'
alias powershell='pwsh'
alias py='python3'
alias ripgrep='rg'
alias sesh='tmux new-session -A -s sesh'
alias tree='exa --tree'

# .zshrc
alias zedit="$EDITOR $HOME/.zshrc"
alias zsource="source $HOME/.zshrc"

# directory aliases
export ccb=~/ccb012100
export dotfiles=~/.dotfiles
export dotemacs=~/.emacs.d
export zhell=~/.zsh

# global aliases
alias -g zf='| fzf' # pipe into fzf
