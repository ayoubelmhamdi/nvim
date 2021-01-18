" vim js
" Enables syntax highlighting
let g:javascript_plugin_jsdoc = 1
let g:javascript_plugin_ngdoc = 1
let g:javascript_plugin_flow = 1

" folding = colapse
augroup javascript_folding
    au!
    au FileType javascript setlocal foldmethod=syntax
augroup END

"augroup folds
"  au!
"  au InsertEnter * let w:oldfen = &l:foldenable \| set nofoldenable
"  au InsertLeave *
"        \ if exists('w:oldfen')
"        \   let &l:foldenable = w:oldfen
"        \   unlet w:oldfen
"        \ endif
"augroup END

" Cancelling
let g:javascript_conceal_function             = "ƒ"
let g:javascript_conceal_null                 = "ø"
let g:javascript_conceal_this                 = "@"
let g:javascript_conceal_return               = "⇚"
let g:javascript_conceal_undefined            = "¿"
let g:javascript_conceal_NaN                  = "ℕ"
let g:javascript_conceal_prototype            = "¶"
let g:javascript_conceal_static               = "•"
let g:javascript_conceal_super                = "Ω"
let g:javascript_conceal_arrow_function       = "⇒"
"let g:javascript_conceal_noarg_arrow_function = "🞅"
"let g:javascript_conceal_underscore_arrow_function = "🞅"



