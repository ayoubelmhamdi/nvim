" top of vimrc
let mapleader="\<Space>"
let maplocalleader = ','

" used for sublimme text plugin, but not work
" execute pathogen#infect()
syntax on
" comment because plugin siting usered 
" filetype plugin on

"automatique save/load fold
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

