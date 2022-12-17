# custom Zsh functions

# functions to cd then ls in one step
function cls { cd "$@" && ls }
function cla { cd "$@" && ls -a }
function cll { cd "$@" && ls -l }
function clal { cd "$@" && ls -al }
function clla { cd "$@" && ls -la }

# open new emacs-frame
function new-frame { emacsclient -e "(new-frame)" }

# dotnet cli commands
function dot() {
    case $1 in
        b )
            shift
            dotnet build "$@"
        ;;
        r )
            shift
            dotnet run "$@"
        ;;
        * )
            dotnet "$@"
        ;;
    esac
}
# golang cli commands
function gl() {
    case $1 in
            b )
            go build .
        ;;
        r )
            go run .
        ;;
        * )
            go "$@"
        ;;
    esac
}
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