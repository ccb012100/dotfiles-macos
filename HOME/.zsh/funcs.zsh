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
            shift
            go build .
        ;;
        r )
            shift
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
            shift
            cargo build
        ;;
        c )
            shift
            cargo check
        ;;
        r )
            shift
            cargo run
        ;;
        * )
            cargo "$@"
        ;;
    esac
}