" set background=light
let g:gruvbox_contrast_light="medium"
set background=dark
let g:gruvbox_contrast_dark="medium"
let g:gruvbox_italic=1
colorscheme gruvbox

command! W w
command! Q q

augroup numbertoggle
  autocmd!
  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
augroup END

" i want this font for adding new symble like ==> .. arrow
set guifont=Hack\ Nerd\ Font\ Regular\ 14
set foldenable
set backspace=2

" folding
if has('folding')
  if has('windows')
    let &fillchars='vert: '           " less cluttered vertical window separators
  endif
  set foldmethod=indent               " not as cool as syntax, but faster
  set foldlevelstart=99               " start unfolded
endif


let g:airline_section_error = '%{airline#util#wrap(airline#extensions#coc#get_error(),0)}'
let g:airline_section_warning = '%{airline#util#wrap(airline#extensions#coc#get_warning(),0)}'

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" the path to python3 is obtained through executing `:echo exepath('python3')` in vim
let g:python3_host_prog = "/usr/local/bin/python3"
let g:python_host_prog = "/usr/local/bin/python"
" inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

" --- GRUVBOX --- use this with gruvbox theme
hi tsxTagName guifg=#E06C75
hi tsxCloseString guifg=#E06C75
" hi tsxCloseTag guifg=#F99575
hi tsxAttributeBraces guifg=#F99575
hi tsxEqual guifg=#F99575
hi tsxAttrib guifg=#F8BD7F cterm=italic
" --- GRUVBOX --- use this with gruvbox theme

" blue
" hi tsxTagName guifg=#71A6DC
" hi tsxCloseString guifg=#71A6DC

hi ReactState guifg=#C176A7
hi ReactProps guifg=#D19A66
hi Events ctermfg=204 guifg=#56B6C2
hi ReduxKeywords ctermfg=204 guifg=#C678DD
hi WebBrowser ctermfg=204 guifg=#56B6C2
hi ReactLifeCycleMethods ctermfg=204 guifg=#D19A66
