" Gramar Map


" use <C-n> if i'm check gramar and unused in reset
function! g:grammarous#hooks.on_check(errs) abort
    nmap <buffer><C-n> <Plug>(grammarous-move-to-next-error)
    nmap <buffer><C-p> <Plug>(grammarous-move-to-previous-error)
endfunction

function! g:grammarous#hooks.on_reset(errs) abort
    nunmap <buffer><C-n>
    nunmap <buffer><C-p>
endfunction


"	Move the cursor to the info window
nnoremap <localleader>a1 <Plug>(grammarous-move-to-info-window) 
"	Open the info window for the error under the cursor
nnoremap <localleader>a2 <Plug>(grammarous-open-info-window) 
"	Reset the current check
nnoremap <localleader>a3 <Plug>(grammarous-reset) 
"	Fix the error under the cursor automatically
nnoremap <localleader>a4 <Plug>(grammarous-fixit) 
"	Fix all the errors in a current buffer automatically
nnoremap <localleader>a5 <Plug>(grammarous-fixall) 
"	Close the information window from checked buffer
nnoremap <localleader>a7 <Plug>(grammarous-close-info-window) 
"	Remove the error under the cursor
nnoremap <localleader>a8 <Plug>(grammarous-remove-error) 
"	Disable the grammar rule under the cursor
nnoremap <localleader>a9 <Plug>(grammarous-disable-rule) 
"	Move cursor to the next error
nnoremap <localleader>b1 <Plug>(grammarous-move-to-next-error) 
"	Move cursor to the previous error
nnoremap <localleader>b2 <Plug>(grammarous-move-to-previous-error) 
