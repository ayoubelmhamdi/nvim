syntax off
filetype plugin indent off


lua << EOF
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
