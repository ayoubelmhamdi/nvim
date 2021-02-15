" Alias write and quit to Q

nnoremap <leader>q :q!
nnoremap <leader>wq :wq!
" nnoremap <leader>w :w<CR>
nnoremap <leader>w :w<CR>:source $MYVIMRC<CR>

"new tab
nnoremap <leader>n :tabnew<cr>:e<Space>
nnoremap <leader>v :tabnew<cr>:edit $HOME/.config/nvim/ayoub-nvim/set-setting.vim<CR>
nnoremap <leader>vi :tabnew<cr>:edit $HOME/.config/nvim/init.vim<CR>
nnoremap <leader>vp :tabnew<cr>:edit $HOME/.config/nvim/Plugin/plugins.vim<CR>

noremap <localleader>s :setlocal spell!<CR>


" Clcar search highlights.
"map <Leader><Space> :let @/=''<CR>

" Format paragraph (selected or not) to 80 character lines.
nnoremap <Leader>g gqap
xnoremap <Leader>g gqa

