colorscheme gruvbox-material

"syntax off
"filetype plugin indent off

" function! SynStack()
"   if !exists("*synstack")
"     return
"   endif
"   echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
" endfunction
"
" restore cursor position
augroup restore_pos |
  au!
  au BufReadPost *
      \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
      \ |   exe "normal! g`\"zz"
      \ | endif
augroup end

lua << EOF
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.g.mapleader = ' '
vim.o.laststatus = 0
vim.opt.termguicolors = true
vim.wo.signcolumn = 'yes'

vim.opt.termguicolors = true
vim.opt.background = 'dark'
-- vim.o.laststatus = 0
vim.wo.signcolumn = 'yes'
vim.wo.fillchars='eob: '
-- local exclude = {
--   ['terminal'] = true,
--   ['toggleterm'] = true,
--   ['prompt'] = true,
--   ['NvimTree'] = true,
--   ['help'] = true,
-- }
--
-- if vim.api.nvim_win_get_config(0).zindex or exclude[vim.bo.filetype] then
--   vim.wo.winbar = ''
-- else
--   vim.wo.winbar = ''
-- end

EOF

set rnu nu
set numberwidth=4

hi LineNr  guifg=#505050   guibg=NONE

hi SignColumn    guibg=NONE
hi Folded        guibg=NONE
hi WinBar        guibg=NONE

hi EndOfBuffer   guifg=NONE guibg=NONE
hi EndOfBuffer   guibg=NONE guibg=NONE



" transparent backgroub
" hi Normal guibg=NONE ctermbg=NONE

" Errors in Red
hi LspDiagnosticsVirtualTextError       guifg=Red    ctermfg=Red
" Warnings in Yellow
hi LspDiagnosticsVirtualTextWarning     guifg=Yellow ctermfg=Yellow
" Info and Hints in White
hi LspDiagnosticsVirtualTextInformation guifg=White  ctermfg=White
hi LspDiagnosticsVirtualTextHint        guifg=White  ctermfg=White

hi WinBar guibg=NONE

set guifont=FiraCode\ Nerd\ Font:h14

