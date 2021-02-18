nmap <Leader>t :call Terminal()<CR>

function! Terminal()
  :set splitbelow
  :set splitright
  :10split
  :set laststatus=0
  :set scl=no
  :set nonu
  :term
endfunction

autocmd TermOpen * startinsert

tnoremap <Esc> <C-\><C-n> <bar> :call ExitTerminal()<CR>
function! ExitTerminal()
  :set nosplitbelow
  :set nosplitright
  :set laststatus=2
  :set scl=yes
  :set number
  :q!
endfunction
