"" place in ~/.config/nvim/init.vim
set nocompatible " set nocompatible must be the first line in .vimrc
set encoding=utf-8
scriptencoding utf-8

"" Exit Insert mode
inoremap jj <Esc>
inoremap jk <Esc>
inoremap kj <Esc>
""

"" Clipboard functionality (paste from system)
vnoremap <leader>y "+y
nnoremap <leader>y "+y
nnoremap <leader>p "+p
vnoremap <leader>p "+p

set backspace=indent,eol,start "" backspace key deletes in insert mode
set autoread         " reload file if it's changed outside vim
set expandtab        " pressing <TAB> inserts spaces
set formatoptions+=j " remove comment leader when joining lines
set history=1000
set hlsearch         " highlight matches
set ignorecase       " default to case insensitive searching
set incsearch        " search as characters are entered
set laststatus=2     " always show statusline
set lazyredraw
set list             " show whitespace
set listchars=eol:↵,tab:➝\ ,trail:~,extends:>,precedes:<,space:·
set nostartofline    " prevent the cursor from changing the current column when jumping to other lines within the window
set nu rnu           " toggle hybrid line numbers (`number relativenumber`)
set ruler            " displays cursor position
set shiftwidth=4     " indentation setting
set showcmd          " show last command in bottom bar
set showmatch        " highlight matching brackets/parens
set softtabstop=4
set tabstop=4
set termguicolors    " true color terminal
set ttimeoutlen=50   " keycode timeout length
set wildmenu         " visual autocomplete for command menuh quick between modes
set ww=<,>,h,l       " wrap to previous/next line when cursor is at line start/end
let g:rainbow_active = 1 " turn on rainbow brackets

"" set tmp file directories
set backupdir=.backup/,~/.vim/.backup/,/tmp//
set directory=.swp/,~/.vim/.swp/,/tmp//
set undodir=.undo/,~/.vim/.undo/,/tmp//

set rtp+=/usr/local/opt/fzf " add fzf to runtimepath

"" Show cursorline and columnline in Insert Mode
"" Only use relative line numbers in Normal Mode
autocmd InsertEnter * set cursorline cursorcolumn norelativenumber
autocmd InsertLeave * set nocursorline nocursorcolumn relativenumber

call plug#begin()

"" colorschemes
Plug 'morhetz/gruvbox'
Plug 'kyoz/purify', { 'rtp': 'vim' }

call plug#end()

syntax enable
"" https://github.com/morhetz/gruvbox/wiki/Installation
let g:gruvbox_contrast_dark = 'hard'
autocmd vimenter * ++nested colorscheme gruvbox
set background=dark " Setting dark mode
