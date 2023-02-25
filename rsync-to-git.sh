#!/usr/bin/env bash

### NOTE: must install rsync via homebrew first!
### The Mac version is outdated and doesn't have the --protect-args flag
if [[ $(which rsync) != '/opt/homebrew/bin/rsync' ]]; then
    echo "ERROR: you don't have rsync installed via homebrew! Run \`brew install rsync\`"
    exit
fi

gitdir="$HOME/.dotfiles"

# add -n,--dry-run flag if testing

sync_file() {
    rsync --recursive --times --progress --protect-args "$1" "$gitdir/root/$2"
}

sync_from_home() {
    rsync --recursive --times --progress --protect-args "$HOME/$1" "$gitdir/HOME/$2"
}

#sync_file \
#    "/LIBRARY/LaunchDaemons/local.kmonad.plist" \
#    "LIBRARY/LaunchDaemons/"

sync_from_home \
    "Library/Application Support/Alfred/Alfred.alfredpreferences/preferences" \
    "LIBRARY/Application Support/Alfred/Alfred.alfredpreferences/"

sync_from_home \
    "Library/Application Support/qmk/qmk.ini" \
    "LIBRARY/Application Support/qmk/"

sync_from_home \
    ".zshrc" \
    ""

sync_from_home \
    ".local/NOTES.code-workspace" \
    ".local/"

sync_from_home \
    ".gitconfig" \
    ""

sync_from_home \
    ".hammerspoon/init.lua" \
    ".hammerspoon/"

sync_from_home \
    ".config/bat/bat.conf" \
    ".config/bat/"

sync_from_home \
    ".config/broot/conf.hjson" \
    ".config/broot/"

sync_from_home \
    ".config/gh/config.yml" \
    ".config/gh/"

sync_from_home \
    ".config/git" \
    ".config/"

sync_from_home \
    ".config/karabiner/karabiner.json" \
    ".config/karabiner/"

sync_from_home \
    ".config/karabiner/assets" \
    ".config/karabiner/"

sync_from_home \
    ".config/kitty" \
    ".config/"

sync_from_home \
    ".config/micro/settings.json" \
    ".config/micro/"

sync_from_home \
    ".config/pgcli/config" \
    ".config/pgcli/"

sync_from_home \
    ".config/ranger/rc.conf" \
    ".config/ranger/"

sync_from_home \
    ".config/ripgreprc" \
    ".config/"

sync_from_home \
    ".config/starship.toml" \
    ".config/"

sync_from_home \
    ".vim/vimrc" \
    ".vim/"

sync_from_home \
    ".zsh/aliases.zsh" \
    ".zsh/"

sync_from_home \
    ".zsh/completions.zsh" \
    ".zsh/"

sync_from_home \
    ".zsh/funcs.zsh" \
    ".zsh/"

sync_from_home \
    ".zsh/fzf_config.zsh" \
    ".zsh/"

sync_from_home \
    ".zsh/tools.zsh" \
    ".zsh/"

sync_from_home \
    ".zsh/unalias.zsh" \
    ".zsh/"
