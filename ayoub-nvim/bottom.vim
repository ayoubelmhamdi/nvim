"  ____  _   _ _____ _____ ___  __  __    __     _____ __  __ 
" | __ )| | | |_   _|_   _/ _ \|  \/  |   \ \   / /_ _|  \/  |
" |  _ \| | | | | |   | || | | | |\/| |____\ \ / / | || |\/| |
" | |_) | |_| | | |   | || |_| | |  | |_____\ V /  | || |  | |
" |____/ \___/  |_|   |_| \___/|_|  |_|      \_/  |___|_|  |_|
                                                            
nnoremap <leader>w :w<cr>

" remember foldtext and silent errore if 
" not have any fold yet in this file or popus
augroup remember_folds
  autocmd!
  autocmd BufWinLeave ?* silent! mkview
  autocmd BufWinEnter ?* silent! loadview
augroup END

" add this line if you want change maping name un which key
call which_key#register('<Space>', "g:which_key_map")
