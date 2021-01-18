" Basic file system commands
nnoremap <A-o> :!touch<Space>
nnoremap <A-e> :!crf<Space>
nnoremap <A-d> :!mkdir<Space>
nnoremap <A-m> :!mv<Space>%<Space>

" Fix Y behaviour
nmap Y y$
" fix p


" Tab shortcuts
nnoremap <A-p> :tabp<CR>
nnoremap <A-n> :tabn<CR>

" Alias replace all to
nnoremap <A-s> :%s//gI<Left><Left><Left>

" _co is best than c i dont know why
nnoremap c "_c

" change j to gj and k to gk
nnoremap j gj
nnoremap k gk


" dd = dd+1
nnoremap 1dd 2dd
nnoremap 2dd 3dd
nnoremap 3dd 4dd
nnoremap 4dd 5dd
nnoremap 5dd 6dd
nnoremap 6dd 7dd
nnoremap 7dd 4dd
nnoremap 8dd 9dd
nnoremap 9dd 10dd

" snbak
nnoremap ,gg :VimGameSnake<CR>



nnoremap ,, <Plug>(FastFoldUpdate) 
