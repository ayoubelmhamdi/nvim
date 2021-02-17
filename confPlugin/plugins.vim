	"𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮
    "𐂮      Plugin           𐂮
	"𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮
call plug#begin('~/.vim/vendor')

        " Perhapes for repet new motion from plugin
	Plug 'easymotion/vim-easymotion'

	"𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮
    "𐂮      themes      𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮
	"𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮

	Plug 'morhetz/gruvbox'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
		" as sublime-text :TODO add to which key
	Plug 'severin-lemaignan/vim-minimap'
		"fastfold
	" Plug 'konfekt/fastfold'

		" Game
	Plug 'johngrib/vim-game-snake'
		"viw hex as #666fff
	Plug 'lilydjwg/colorizer'
	"𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮
    "𐂮      search       𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮
	"𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮
		"which key
	Plug 'liuchengxu/vim-which-key'
		"snaek search
	Plug 'justinmk/vim-sneak'
		"fzf
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	Plug 'antoinemadec/coc-fzf'
	Plug 'airblade/vim-rooter'


	"𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮
    "𐂮      Langague      𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮
	"𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮
		"programation
		"processing
	" Plug 'sophacles/vim-processing'
		" js
	Plug 'pangloss/vim-javascript'




		
	"𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮
    "𐂮         IDE       𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮
	"𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮
		"coc
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
		" Gui debugin
	Plug 'puremourning/vimspector'
	Plug 'scrooloose/syntastic'
		" grammare
	Plug 'rhysd/vim-grammarous'
		"commentary
	Plug 'joom/vim-commentary'
		"surround
	Plug 'tpope/vim-surround'
		" repeat complex motion m
	Plug 'tpope/vim-repeat'
		" undotree
	Plug 'mbbill/undotree'
		"snip
		" Engien snipppets + snipmate
	Plug 'SirVer/ultisnips'
		" big  snippets exemple commit for 
		" edit by my self
	Plug 'honza/vim-snippets'
		"ale
	" Plug 'dense-analysis/ale'
		" yocompleme
	" Plug 'valloric/youcompleteme'
		"syntastic

	"𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮
    "𐂮          Git       𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮
	"𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮
		" fu-git-ive
	Plug 'tpope/vim-fugitive'
		" vim rooter :
    " Plug 'deja/add' :deja adding in top ^_^
        
		" adding +/- foreach line modifier
	Plug 'mhinz/vim-signify'



	"𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮
    "𐂮   not used yet    𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮
	"𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮𐂮

	" Plug 'MarcWeber/vim-addon-mw-utils'
	" Plug 'tomtom/tlib_vim'
	" Plug 'garbas/vim-snipmate'
		"Disacyive now
	" Plug 'majutsushi/tagbar'
	" Plug 'scrooloose/nerdtree'
"       "latex is disactived
	" Plug 'lervag/vimtex'
	" Plug 'vim-latex/vim-latex'
	" Plug 'neoclide/coc-vimtex'
"
call plug#end()
