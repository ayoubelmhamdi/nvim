syntax off


hi TabLineFill   guibg=#282828
hi TabLineSel    guifg=#ffffff   guibg=#880088
hi TabLine       guifg=#909090   guibg=#282828

" line number
set rnu nu
set numberwidth=4 " the width of widget
hi LineNr  guifg=#505050   guibg=NONE
" hi Normal  guifg=White     guibg=Black

" transparent backgroub
"hi Normal guibg=NONE ctermbg=NONE

" Errors in Red
hi LspDiagnosticsVirtualTextError guifg=Red ctermfg=Red
" Warnings in Yellow
hi LspDiagnosticsVirtualTextWarning guifg=Yellow ctermfg=Yellow
" Info and Hints in White
hi LspDiagnosticsVirtualTextInformation guifg=White ctermfg=White
hi LspDiagnosticsVirtualTextHint guifg=White ctermfg=White
"autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()
hi SignColumn    guibg=NONE
hi Folded        guibg=NONE


" restore cursor position
augroup restore_pos |
  au!
  au BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\"zz"
      \ | endif
augroup end

set guifont=FiraCode\ Nerd\ Font:h14
