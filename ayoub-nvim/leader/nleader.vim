" Alias write and quit to Q




nnoremap <leader>w :w<CR>:source $MYVIMRC<CR><Esc>:AirlineRefresh<cr><C-c><Esc>
nnoremap <leader>q :q!
nnoremap <leader>wq :wq!
" nnoremap <leader>w :w<CR>

"new tab
noremap <localleader>s :setlocal spell!<CR>


" Clcar search highlights.
"map <Leader><Space> :let @/=''<CR>
nnoremap <leader>n :tabnew!<cr>:e<Space>
nnoremap <leader>v :tabnew!<cr>:e $HOME/.config/nvim/ayoub-nvim/set-setting.vim<CR>
nnoremap <leader>vi :tabnew!<cr><Esc>:e! $HOME/.config/nvim/init.vim<CR>
nnoremap <leader>vp :tabnew!<cr>:e $HOME/.config/nvim/confPlugin/plugins.vim<CR>
"Format paragraph (selected or not) to 80 character lines.
xnoremap <Leader>G gqa
nnoremap <Leader>G gqap

