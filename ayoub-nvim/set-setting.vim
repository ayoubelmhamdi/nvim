let mapleader=" "
set langmenu=en_US
let $LANG = 'en_US'
"source $VIMRUNTIME/delmenu.vim
"source $VIMRUNTIME/menu.vim


set wrap 
" disactive / stop linebreak / retour ligne
"set termguicolors
"iiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiixxxxxxxxxxxxxxxx
"colorscheme desert
colorscheme Tomorrow-Night-Eighties
highlight Normal ctermbg=232

syntax on
filetype plugin on




set cursorline " Cursor line
hi CursorLine   cterm=bold ctermbg=234
au InsertEnter * hi Normal  ctermbg=236
au InsertLeave * hi Normal ctermbg=234

"  ctermfg  use fir change color of current ligne
"hi CursorLine   cterm=bold ctermbg=234 ctermfg=120
"highlight Cursor ctermfg=white ctermbg=red

"set bg=light				" backgound

set shiftwidth=2            " Tab Settings
"set softtabstop=2           " Tab Settings
"set tabstop=4               "
set ignorecase				"
set smartcase				"
"set clipboard+=unnamedplus	" external copy past
"set encoding=utf-8			"
set go=a					"
set mouse=a					"
set laststatus=0			"
set nohlsearch				"
set noruler					"
set noshowcmd				"
set noshowmode				"
set number relativenumber	"
set smartindent		        " best forma of code
set title					" title below
set updatetime=51			" plugin update in ms
set wildmode=longest,list,full	" !!! Enable autocompletion
set splitbelow splitright	" !! Splits open at the bottom and right




set expandtab
set laststatus=0
set shortmess+=afilmnrxoOtT
set hidden


" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**

"vim ex1i"
""Fix Shift+Tab
"nmap <S-Tab> <<
"imap <S-Tab> <Esc><<i
"
"
"set tw=0
"set wm=0
"set linebreak
"
"filetype on                   " try to detect filetypes
"filetype plugin indent on     " enable loading indent file for filetype
"set number                    " Display line numbers
"set numberwidth=1             " using only 1 column (and 1 space) while possible
"set wildmenu                  " Menu completion in command mode on <Tab>
"set wildmode=full             " <Tab> cycles between all matching choices.
"set showcmd
"
"set colorcolumn=80
"
"
"
"set ls=2  "Always show status line"
"
"
"set ruler
"
"
"set nolazyredraw
"set showmatch
"
"set backspace=indent,eol,start
"
"
"set undodir=~/.vim_runtime/undodir
"set undofile
"
"" displays tabs with :set list & displays when a line runs off-screen
"set listchars=tab:>.,trail:.,precedes:<,extends:>
"set list
"
"""" Searching and Patterns
"set ignorecase              " Default to using case insensitive searches,
"set smartcase               " unless uppercase letters are used in the regex.
"set smarttab                " Handle tabs more intelligently
"set hlsearch                " Highlight searches by default.
"set incsearch               " Incrementally search while typing a /regex
"
"
"
"
