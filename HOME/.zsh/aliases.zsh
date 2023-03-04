#!/usr/bin/env zsh
# zsh aliases

### built-in tools

# easy way to call aliased commands
alias ,=command
alias back='cd -'
alias c=cd
alias cls=clear
alias cp='cp -iv'
alias ez='exec zsh'
alias grep='grep --color=auto'
alias his=history
# last exit code
alias lec='echo $?'
alias mkdir='mkdir -v'
alias mv='mv -iv'
# print $PATH formatted as one entry per line
alias path='sed "s/:/\n/g" <<< "$PATH"'
alias paths='path | sort'
alias rm='rm -I'
alias rmdir='rmdir -v'
alias uuid='uuidgen'

## cd
alias ...='cd ../..'
alias ....='cd ../../..'
alias .....='cd ../../../..'
alias ......='cd ../../../../..'

## ls
# replace ls with exa
alias ls='exa --git --icons --group-directories-first -F'
alias tree='exa --tree'
alias l=ls
alias la='ls -a'
alias ll='ls -l'
alias lal='ls -al'
alias lla='ls -la'
alias llt='exa -l -t modified --sort newest'
alias llat='exa -al -t modified --sort newest'

### external tools
alias b=bat
alias brewup='brew upgrade'
# open current directory in VS Code
alias c.='code .'
alias difftastic=difft
alias e=emacs
# start emacs server if it's not already running
alias emacs='emacsclient -nc -a=""'
alias etty='emacsclient -nw'
# show hidden files when doing fd search
alias fd='fd -H'
# build the go project in the cwd
alias gob='go build .'
# run the go project in the cwd
alias gor='go run .'
# colorize json
alias jq='jq -C'
alias nrb='npm run build'
alias nrl='npm run lint'
alias nrs='npm run start'
alias nrt='npm run test'
# run local version of ts-node
alias nts='npx ts-node'
alias py=python3
alias python=python3
# verbatim search (i.e. disable regex)
alias rgf='rg -F'
# case-insensitive search
alias rgi='rg -i'
# keep making this typo for some reason
alias rust='echo -e "\nthink you mean _rusH_"'
alias sesh='tmux new-session -A -s sesh'
alias v=vim

##git
alias g=git
alias ga='git a'
alias gaa='git aa'
alias gacm='git acm'
alias gc='git c'
alias gcm='git cm'
alias gd='git d'
alias gds='git ds'
alias gf='git f'
alias gl='git l'
alias gp='git pull'
alias gps='git push'
alias gs='git s'