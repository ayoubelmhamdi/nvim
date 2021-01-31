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

" Prevent x from overriding what's in the clipboard.
noremap x "_x
noremap X "_x

" Prevent selecting and pasting from overwriting what you originally copied.
xnoremap p pgvy

" Keep cursor at the bottom of the visual selection after you yank it.
vmap y ygv<Esc>



" Navigate the complete menu items like CTRL+n / CTRL+p would.
inoremap <expr> <Down> pumvisible() ? "<C-n>" :"<Down>"
inoremap <expr> <Up> pumvisible() ? "<C-p>" : "<Up>"

" Select the complete menu item like CTRL+y would.
inoremap <expr> <Right> pumvisible() ? "<C-y>" : "<Right>"
inoremap <expr> <CR> pumvisible() ? "<C-y>" :"<CR>"

" Cancel the complete menu item like CTRL+e would.
inoremap <expr> <Left> pumvisible() ? "<C-e>" : "<Left>"


" Make sure all types of requirements.txt files get syntax highlighting.
autocmd BufNewFile,BufRead requirements*.txt set syntax=python

" Ensure tabs don't get converted to spaces in Makefiles.
autocmd FileType make setlocal noexpandtab
