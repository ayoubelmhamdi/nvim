syntax off
filetype plugin indent off

function! SynStack()
  if !exists("*synstack")
    return
  endif
  echo map(synstack(line('.'), col('.')), 'synIDattr(v:val, "name")')
endfunction

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
EOF

set rnu nu
set numberwidth=4

hi LineNr  guifg=#505050   guibg=NONE

hi SignColumn    guibg=NONE
hi Folded        guibg=NONE
