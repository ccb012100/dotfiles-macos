#!/usr/bin/env bash

### NOTE: must install rsync via homebrew first!
### The Mac version is outdated and doesn't have the --protect-args flag
if [[ $(which rsync) != '/opt/homebrew/bin/rsync' ]]; then
    echo "ERROR: you don't have rsync installed via homebrew! Run \`brew install rsync\`"
    exit
fi

gitdir="$HOME/.dotfiles"

sync_file() {
    rsync --recursive --times --progress --protect-args "$1" "$gitdir/root/$2"
}

sync_from_home() {
    rsync --recursive --times --progress --protect-args "$HOME/$1" "$gitdir/HOME/$2"
}

# --verbose --dry-run
rsync --dirs --recursive --times --progress \
    --files-from=files-to-sync "$HOME" "$gitdir/HOME"
