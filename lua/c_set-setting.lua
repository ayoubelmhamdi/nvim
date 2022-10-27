vim.o.hidden = true
--vim.o.fileencoding = 'utf-8'
--vim.o.termguicolors = true
vim.o.splitbelow = true
vim.o.splitright = true
--vim.o.conceallevel = 0 -- So that I can see `` in markdown files
--vim.wo.number = true
--vim.wo.relativenumber = true
--vim.wo.signcolumn = "yes"
--vim.o.clipboard = "unnamedplus"
vim.cmd [[

set spellsuggest+=5
set linebreak
set nojoinspaces 
set linespace=5
set clipboard+=unnamedplus
set clipboard+=unnamed
set inccommand=split 


set nowrap
set autoindent
set smartindent

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

"set backspace=indent,eol,start

set mouse=a
set updatetime=300
set wildignore+=*.o,*.obj,.git,*.pyc


set noswapfile 
set nobackup
"set noundofile 
set backupdir=/tmp/nvim/backup1//
set directory=/tmp/nvim/backup2//
set undodir=/tmp/nvim/backup3//

set autoread autowrite
set ignorecase smartcase


set nohlsearch
augroup vimrc-incsearch-highlight
  autocmd!
  autocmd CmdlineEnter /,\? :set hlsearch
augroup END

]]
