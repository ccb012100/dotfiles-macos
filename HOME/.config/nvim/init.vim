"" Vim: place in ~/.vim/vimrc
scriptencoding utf-8
filetype indent plugin on

"" Exit Insert mode
inoremap jj <Esc>
inoremap jk <Esc>
inoremap kj <Esc>

"" Clipboard functionality (paste from system)
vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>p "+p

"" https://vim.fandom.com/wiki/Insert_newline_without_entering_insert_mode
nmap <S-Enter> O<Esc>
nmap <CR> o<Esc>

set listchars=eol:↵,tab:➝\ ,trail:~,extends:>,precedes:<,space:·

let g:rainbow_active = 1        " turn on rainbow brackets
set autoread                    " reload file if it's changed outside vim
set backspace=indent,eol,start  " backspace key deletes in insert mode
set encoding=utf-8
set expandtab                   " pressing <TAB> inserts spaces
set formatoptions+=j            " remove comment leader when joining lines
set history=1000
set hlsearch                    " highlight matches
set ignorecase                  " default to case insensitive searching
set incsearch                   " search as characters are entered
set laststatus=2                " always show statusline
set lazyredraw
set list                        " show whitespace
set nocompatible                " set nocompatible must be the first line in .vimrc
set nostartofline
set nu rnu                      " toggle hybrid line numbers (`number relativenumber`)
set number
set rtp+=/usr/local/opt/fzf     " add fzf to runtimepath
set ruler                       " displays cursor position
set shiftwidth=4                " indentation setting
set showcmd                     " show last command in bottom bar
set showmatch                   " highlight matching brackets/parens
set smartcase
set smartindent
set softtabstop=4
set tabstop=4
set termguicolors               " true color terminal
set title
set ttimeoutlen=50              " keycode timeout length
set visualbell
set wildmenu                    " visual autocomplete for command menuh quick between modes
set ww=<,>,h,l                  " wrap to previous/next line when cursor is at line start/end

"" set tmp file directories
set backupdir=.backup/,~/.vim/.backup/,/tmp//
set directory=.swp/,~/.vim/.swp/,/tmp//
set undodir=.undo/,~/.vim/.undo/,/tmp//

"" Show cursorline and columnline in Insert Mode
"" Only use relative line numbers in Normal Mode
autocmd InsertEnter * set cursorline cursorcolumn norelativenumber
autocmd InsertLeave * set nocursorline nocursorcolumn relativenumber

call plug#begin()

"" colorschemes
Plug 'morhetz/gruvbox'
Plug 'kyoz/purify', { 'rtp': 'vim' }
Plug 'feline-nvim/feline.nvim'

call plug#end()

syntax enable
let g:gruvbox_contrast_dark = 'hard'
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark " Setting dark mode
