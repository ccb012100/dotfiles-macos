#!/usr/bin/env zsh
# custom Zsh functions

# functions to cd then ls in one step
function cls { cd "$@" && ls }
function cla { cd "$@" && ls -a }
function cll { cd "$@" && ls -l }
function clal { cd "$@" && ls -al }
function clla { cd "$@" && ls -la }

# cd into the directory the file is located in
function cdf { cd `dirname $1` }

# open new emacs-frame
function new-frame { emacsclient -e "(new-frame)" }

# cargo cli commands
function cg() {
    case $1 in
        b )
            cargo build
        ;;
        c )
            cargo check
        ;;
        r )
            cargo run
        ;;
        * )
            cargo "$@"
        ;;
    esac
}

# find in personal notes
function fn() {
    case $1 in
        i ) # case-insensitive
            shift
            rg -i "$@" ~/ccb012100/notes
        ;;
        f ) # verbatim
            shift
            rg -F "$@" ~/ccb012100/notes
        ;;
        * )
            rg "$@" ~/ccb012100/notes
        ;;
    esac
}
