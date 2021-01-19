set nocompatible               " required
filetype off                   " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.config/nvim/bundle/Vundle.vim
call vundle#begin()
	Plugin 'VundleVim/Vundle.vim'
	Plugin 'tpope/vim-fugitive'
	Plugin 'scrooloose/syntastic'
	Plugin 'tpope/vim-surround'
        Plugin 'konfekt/fastfold'

	Plugin 'johngrib/vim-game-snake'
        Plugin 'sophacles/vim-processing'
        Plugin 'pangloss/vim-javascript'

        Plugin 'neoclide/coc.nvim'
        Plugin 'honza/vim-snippets'
        Plugin 'MarcWeber/vim-addon-mw-utils'
        Plugin 'tomtom/tlib_vim'
        Plugin 'garbas/vim-snipmate'
        Plugin 'SirVer/UltiSnips' 
        Plugin 'liuchengxu/vim-which-key'

        Plugin 'lilydjwg/colorizer'
        Plugin 'joom/vim-commentary'

        Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plugin 'junegunn/fzf.vim'
        Plugin 'airblade/vim-rooter'

"       Plugin 'lervag/vimtex'
"       Plugin 'dense-analysis/ale'
"	Plugin 'majutsushi/tagbar'
"       Plugin 'scrooloose/nerdtree'
"       Plugin 'vim-latex/vim-latex'
"       Plugin 'neoclide/coc-vimtex'
call vundle#end()            " required
filetype plugin indent on    " required


"
"
"" Themes
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'tomasiser/vim-code-dark'
"" Code Completion
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"" Tags
"Plug 'alvan/vim-closetag'
"Plug 'tpope/vim-surround'
"Plug 'mattn/emmet-vim'
"" Commenting
"Plug 'tpope/vim-commentary'
"" Syntax highlighting
"Plug 'HerringtonDarkholme/yats.vim'
"Plug 'yuezk/vim-js'
"Plug 'maxmellon/vim-jsx-pretty'
"Plug 'rust-lang/rust.vim'
"" Motions
"Plug 'easymotion/vim-easymotion'
"" Git
"Plug 'airblade/vim-gitgutter'
"Plug 'tpope/vim-fugitive'
"" Misc
"Plug 'junegunn/fzf.vim'
"Plug 'junegunn/goyo.vim'
"Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
"Plug 'vimwiki/vimwiki'
"Plug 'tpope/vim-repeat'
"Plug 'dhruvasagar/vim-table-mode'
"Plug 'itchyny/calendar.vim'
"Plug 'mbbill/undotree'
""Plug 'lambdalisue/fern.vim'
"Plug 'lambdalisue/nerdfont.vim'
"Plug 'lambdalisue/fern-renderer-nerdfont.vim'




"autocmd VimEnter *
"  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
"  \|   PlugInstall --sync | q
"  \| endif
