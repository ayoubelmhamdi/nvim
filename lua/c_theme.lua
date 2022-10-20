vim.g.gruvbox_material_enable_bold = 1
vim.g.gruvbox_material_transparent_background = 1
vim.g.gruvbox_material_show_eob = 1
vim.g.gruvbox_material_better_performance = 1

vim.cmd 'colorscheme gruvbox-material'


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
