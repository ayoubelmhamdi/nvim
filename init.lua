vim.g.mapleader = ' '
vim.o.laststatus = 0
vim.opt.termguicolors = true
vim.wo.signcolumn = 'yes'

vim.cmd [[
syntax off

hi SignColumn     guibg=NONE
hi Folded         guibg=NONE


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
]]

vim.loop.new_timer():start(
  1,
  0,
  vim.schedule_wrap(function()
    local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/opt/'
    for dir in io.popen('ls ' .. install_path):lines() do
      vim.cmd('packadd ' .. dir)
    end
    -- lspconfig not loaded with async, need reopen file again

    require 'c_lspkind'
    require 'c_lspsaga'
    require 'c_null-ls'
    require 'c_lspconfig'
    require 'c_cmp'
    require 'c_treesitter'
    require 'c_gruvbox-material'
    require 'c_devicons'
    require 'c_indent-blankline'
    require 'c_lualine'
    require 'c_nvim-tree'
    require 'c_telescope'
    require 'c_autopair'
    require 'c_leap'
    require 'c_surround'
    require 'c_comment'
    require 'c_gitsigns'
    require 'c_hlslens'
    require 'c_overseer'
    require 'c_set-setting'
    require 'c_neovide'
    require 'c_keymapings'
    require 'c_autocmd'
    require 'c_function'
  end)
)
