        "vundel git move-vundle

" 
set nocompatible
filetype off
" set the runtime path to include Vundle and initialize
" set rtp+=~/.config/nvim/bundle/Vundle.vim
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
        Plugin 'VundleVim/Vundle.vim'

        " themes
        Plugin 'morhetz/gruvbox'
        Plugin 'vim-airline/vim-airline'
        Plugin 'vim-airline/vim-airline-themes'
        " as sublime-text
        Plugin 'severin-lemaignan/vim-minimap'
        "fastfold
        " Plugin 'konfekt/fastfold'

        "game"
        Plugin 'johngrib/vim-game-snake'
        "viw hex as #666fff
        Plugin 'lilydjwg/colorizer'
        "which key
        Plugin 'liuchengxu/vim-which-key'
        "snaek search
        Plugin 'justinmk/vim-sneak'
        "fzf
        Plugin 'junegunn/fzf', { 'do': { -> fzf#install() } }
        Plugin 'junegunn/fzf.vim'
        Plugin 'airblade/vim-rooter'

        "programation
        "processing
        Plugin 'sophacles/vim-processing'
        "js"
        Plugin 'pangloss/vim-javascript'




        "intelegent"
        "coc
        Plugin 'neoclide/coc.nvim'
        " Gui debugin
        Plugin 'puremourning/vimspector'
        "ale
        " Plugin 'dense-analysis/ale'
        " yocompleme
        " Plugin 'valloric/youcompleteme'
        "syntastic
        Plugin 'scrooloose/syntastic'
        " grammare
        Plugin 'rhysd/vim-grammarous'
        "commentary
        Plugin 'joom/vim-commentary'
        "surround
        Plugin 'tpope/vim-surround'
        " repeat complex motion m
        Plugin 'tpope/vim-repeat'
        " undotree
        Plugin 'mbbill/undotree'
        "snip
        " Engien snipppets + snipmate
        Plugin 'SirVer/ultisnips'
        " big  snippets exemple commit for 
        " edit by my self
        Plugin 'honza/vim-snippets'

        " Git
        " fu-git-ive
        Plugin 'tpope/vim-fugitive'
        " vim rooter : deja adding in top
        " adding +/- foreach line modifier
        Plugin 'mhinz/vim-signify'




        " not used yet
"       Plugin 'MarcWeber/vim-addon-mw-utils'
"       Plugin 'tomtom/tlib_vim'
"       Plugin 'garbas/vim-snipmate'
        "Disacyive now
"       Plugin 'majutsushi/tagbar'
"       Plugin 'scrooloose/nerdtree'
"       "latex is disactived
"       Plugin 'lervag/vimtex'
"       Plugin 'vim-latex/vim-latex'
"       Plugin 'neoclide/coc-vimtex'
"
call vundle#end()            " required
filetype plugin indent on    " required


" not tested
"" Themes
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'tomasiser/vim-code-dark'
"" Tags
"Plug 'alvan/vim-closetag'
"Plug 'mattn/emmet-vim'
"" Syntax highlighting
"Plug 'HerringtonDarkholme/yats.vim'
"Plug 'yuezk/vim-js'
"Plug 'maxmellon/vim-jsx-pretty'
"Plug 'rust-lang/rust.vim'
"" Motions
"Plug 'easymotion/vim-easymotion'
"" Git
"Plug 'airblade/vim-gitgutter'
"" Misc
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



"install plugin automatique
"autocmd VimEnter *
"  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
"  \|   PlugInstall --sync | q
"  \| endif
