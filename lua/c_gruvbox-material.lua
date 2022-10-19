vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.o.laststatus = 0
vim.wo.signcolumn = 'yes'

vim.cmd [[
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
hi Normal guibg=NONE ctermbg=NONE


" restore cursor position
" augroup restore_pos |
"   au!
"   au BufReadPost *
"       \ if line("'\"") >= 1 && line("'\"") <= line("$") && &ft !~# 'commit'
"       \ |   exe "normal! g`\"zz"
"       \ | endif
" augroup end


set guifont=FiraCode\ Nerd\ Font:h14

" Errors in Red
hi LspDiagnosticsVirtualTextError guifg=Red ctermfg=Red
" Warnings in Yellow
hi LspDiagnosticsVirtualTextWarning guifg=Yellow ctermfg=Yellow
" Info and Hints in White
hi LspDiagnosticsVirtualTextInformation guifg=White ctermfg=White
hi LspDiagnosticsVirtualTextHint guifg=White ctermfg=White
"autocmd CursorHold * lua vim.lsp.diagnostic.show_line_diagnostics()

]]

    vim.g.gruvbox_material_enable_bold = 1
    vim.g.gruvbox_material_transparent_background = 1
    vim.g.gruvbox_material_show_eob = 1
    vim.g.gruvbox_material_better_performance = 1

    vim.cmd 'colorscheme gruvbox-material'
    vim.cmd[[setlocal! spell! spelllang=en,fr]]
    -- if true then return end
    vim.opt.list = true
    vim.opt.listchars:append 'eol:↴'
    -- vim.opt.listchars:append "space:⋅"

-- vim.loop.new_timer():start(
--   9000,
--   0,
--   vim.schedule_wrap(function()
--     -- fix white  tab-color when startup vim
--     vim.o.showtabline=1
--     require('lualine').setup {
--       options = {
--         theme = 'gruvbox-material',
--       },
--     }
--   end)
-- )
