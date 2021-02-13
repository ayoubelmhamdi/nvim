" my color+theme+schema
"set termguicolors
"colorscheme desert
set cursorline
hi CursorLine   cterm=bold ctermbg=234
au InsertEnter * hi Normal ctermbg=236
au InsertLeave * hi Normal ctermbg=234
" colorscheme Tomorrow-Night-Eighties
" highlight Normal ctermbg=234
" set bg=dark
colorscheme gruvbox
let g:airline_theme='gruvbox'
let g:airline#extensions#tabline#enable=1
let g:airline#extensions#tabline#fnamemode=':t'



