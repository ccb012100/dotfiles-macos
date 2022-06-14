# zsh aliass

# cd aliases
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

# ls
alias ls='exa'
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
alias path="sed 's/:/\n/g' <<< '$PATH'"    # print $PATH in human-readable format

# external tools
alias c.='code .'                           # open current directory in VS Code
alias difftastic='difft'
alias g='git'
alias gf='git forgit'
alias gitconfig='nvim ~/.gitconfig'
alias jq='jq -C'                            # colorize json
alias npm="echo \"use _pn/pnpm_\""
alias pn='pnpm'
alias powershell='pwsh'
alias py='python3'
alias ripgrep='rg'
alias sesh='tmux new-session -A -s sesh'
alias tree='exa --tree'
alias v='vim'

# .zshrc
alias zedit="$EDITOR $HOME/.zshrc"
alias zsource="source $HOME/.zshrc"

# directory aliases
export ccb=$HOME/ccb012100
export dotfiles=$HOME/.dotfiles
export dotemacs=$HOME/.emacs.d
export notes=$HOME/ccb012100/notes
export zhell=$HOME/zsh

# global aliases
alias -g zf='| fzf' # pipe into fzf
