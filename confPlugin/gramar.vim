" gramar seting

let g:grammarous#default_comments_only_filetypes = {
            \ '*' : 1, 'help' : 0, 'markdown' : 0,
            \ }

let g:grammarous#enabled_categories = {
            \'*' : ['PUNCTUATION'],
            \}

let g:grammarous#disabled_categories = {
            \ '*' : ['PUNCTUATION'],
            \ 'help' : ['PUNCTUATION', 'TYPOGRAPHY'],
            \ }
let g:grammarous#hooks = {}


" merge gramar and spell vim: set..=1
g:grammarous#use_vim_spelllang=0
