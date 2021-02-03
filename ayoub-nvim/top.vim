" top of vimrc
let mapleader="\<Space>"
let maplocalleader = ','


syntax on
filetype plugin on

"automatique save/liad fold
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview
  autocmd BufWinEnter * silent! loadview
augroup END

