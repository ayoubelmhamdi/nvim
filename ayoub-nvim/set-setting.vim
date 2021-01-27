let mapleader="\<Space>"
let maplocalleader = ','

syntax on
filetype plugin on


" disactive / stop linebreak / retour ligne

"set termguicolors
"colorscheme desert
set cursorline
hi CursorLine   cterm=bold ctermbg=234
au InsertEnter * hi Normal ctermbg=236
au InsertLeave * hi Normal ctermbg=234
colorscheme Tomorrow-Night-Eighties
highlight Normal ctermbg=234
set bg=dark

set wrap 
set autoindent
set smartindent	
set smarttab
set expandtab
set shiftwidth=8
set softtabstop=4 
set tabstop=4 
set ignorecase
set clipboard=unnamedplus
set encoding=utf-8
set mouse=a
set number relativenumber
set title
set updatetime=300
set splitbelow splitright
" Ignore these files when completing
set wildignore+=*.o,*.obj,.git,*.pyc
set wildignore+=eggs/**
set wildignore+=*.egg-info/**
set noswapfile
set nobackup

set autoread
set backspace=indent,eol,start
set backupdir=/tmp//,.
set colorcolumn=100
set complete+=kspell
set completeopt=menuone,longest
set directory=$HOME/.local/tmp//,.
set formatoptions=tcqrn1
set go=a
set hidden
set hlsearch
set incsearch
set laststatus=2
set matchpairs+=<:>
set mmp=5000
set modelines=2
set noerrorbells visualbell t_vb=
set nohlsearch
set noruler
set noshiftround
set nospell
set nostartofline
set regexpengine=1
set ruler
set scrolloff=3
set shortmess+=c
set showcmd
set showmatch
set showmode
set smartcase
set spelllang=en_us
set textwidth=0
set timeoutlen=1000
set ttimeout
set ttimeoutlen=0
set whichwrap=b,s,<,>
set wildmenu
set wildmode=full
set wildmode=longest,list,full
set undodir=/tmp
set undofile
set virtualedit=block
set ttyfast
if !has('nvim')
  set ttymouse=sgr
endif

"
"
"set tw=0
"set wm=0
"set linebreak
"
"set numberwidth=1             " using only 1 column (and 1 space) while possible
"set wildmenu                  " Menu completion in command mode on <Tab>
"set wildmode=full             " <Tab> cycles between all matching choices.
"set showcmd
"
"set colorcolumn=99
"
"
"
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
