" top of vimrc
" Remap leader key to <Space>
nnoremap <Space> <Nop>
let g:mapleader="\<Space>"
let maplocalleader = ','

" allow me to change maping name in which key
" but you mast add call wich key regist in bottom of vim
let g:which_key_map =  {}

" used for sublimme text plugin, but not work
" execute pathogen#infect()
" syntax on
" comment because plugin siting usered 
" filetype plugin on

"automatique save/load fold
augroup remember_folds
  autocmd!
  autocmd BufWinLeave * mkview!
  autocmd BufWinEnter * silent! loadview
augroup END

