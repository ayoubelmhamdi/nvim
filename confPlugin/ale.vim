" after plugins loaded requirde
let g:ale_disable_lsp = 1

" fix on save
let g:ale_fix_on_save = 1
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_insert_leave = 0
" if you don't want linters to run on opening a file
let g:ale_lint_on_enter = 1
" show suggret
" ALEFixSuggest
" auto import
let g:ale_completion_autoimport = 1
" use airline status bar
let g:airline#extensions#ale#enabled = 1
" style of message
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
" jumb next/previous
nmap <silent> <C-k> <Plug>(ale_previous_wrap)
nmap <silent> <C-j> <Plug>(ale_next_wrap)
" chose my fixer foreach language
" add for trim ligne
" irlineToggle
let g:ale_fixers = {
\   '*': ['trim_whitespace'],
\   'javascript': ['eslint'],
\   'python': ['black'],
\}
