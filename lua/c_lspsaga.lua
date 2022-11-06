local keymap = vim.keymap.set
local saga = require 'lspsaga'

saga.init_lsp_saga {
  border_style = 'rounded',
  symbol_in_winbar = {
    in_custom = true,
  },
}

-- local function config_winbar()
--   local exclude = {
--     ['terminal'] = true,
--     ['toggleterm'] = true,
--     ['prompt'] = true,
--     ['NvimTree'] = true,
--     ['help'] = true,
--   } -- Ignore float windows and exclude filetype
--   if vim.api.nvim_win_get_config(0).zindex or exclude[vim.bo.filetype] then
--     vim.wo.winbar = ''
--   else
--     local ok, lspsaga = pcall(require, 'lspsaga.symbolwinbar')
--     local sym
--     if ok then
--       sym = lspsaga.get_symbol_node()
--     end
--     if sym ~= nil then
--       sym = ' '
--     end
--     vim.wo.winbar = sym
--   end
-- end
local function config_winbar_or_statusline()
    local exclude = {
        ['terminal'] = true,
        ['toggleterm'] = true,
        ['prompt'] = true,
        ['NvimTree'] = true,
        ['help'] = true,
    } -- Ignore float windows and exclude filetype
    if vim.api.nvim_win_get_config(0).zindex or exclude[vim.bo.filetype] then
        vim.wo.winbar = ''
    else
        local ok, lspsaga = pcall(require, 'lspsaga.symbolwinbar')
        local sym
        if ok then sym = lspsaga.get_symbol_node() end
        local win_val = ''
        win_val = ' ' -- always set space for winbar
        if sym ~= nil then win_val = win_val .. sym end
        vim.wo.winbar = win_val
    end
end


local events = { 'BufEnter', 'BufWinEnter', 'CursorMoved' }

vim.api.nvim_create_autocmd(events, {
    pattern = '*',
    callback = function() config_winbar_or_statusline() end,
})

vim.api.nvim_create_autocmd('User', {
    pattern = 'LspsagaUpdateSymbol',
    callback = function() config_winbar_or_statusline() end,
})

keymap({ 'n', 'v' }, ',ca', '<cmd>Lspsaga code_action<CR>', { silent = true })
keymap('n', '<space>rn', '<cmd>Lspsaga rename<CR>', { silent = true })
keymap('n', 'gd', '<cmd>Lspsaga peek_definition<CR>', { silent = true })


keymap('n', '[d', '<cmd>Lspsaga diagnostic_jump_prev<CR>', { silent = true })
keymap('n', ']d', '<cmd>Lspsaga diagnostic_jump_next<CR>', { silent = true })
keymap('n', '<space>o', '<cmd>LSoutlineToggle<CR>', { silent = true })
keymap('n', 'K', '<cmd>Lspsaga hover_doc<CR>', { silent = true })
keymap('n', '<A-d>', '<cmd>Lspsaga open_floaterm<CR>', { silent = true })
keymap('n', '<A-d>', '<cmd>Lspsaga open_floaterm lazygit<CR>', { silent = true })
keymap('t', '<A-d>', [[<C-\><C-n><cmd>Lspsaga close_floaterm<CR>]], { silent = true })

-- Show line diagnostics
keymap('n', '<space>cd', '<cmd>Lspsaga show_line_diagnostics<CR>', { silent = true })

keymap('n', 'gh', '<cmd>Lspsaga lsp_finder<CR>', { silent = true })

-- Only jump to error
keymap('n', '[e', function()
  require('lspsaga.diagnostic').goto_prev { severity = vim.diagnostic.severity.ERROR }
end, { silent = true })
keymap('n', ']e', function()
  require('lspsaga.diagnostic').goto_next { severity = vim.diagnostic.severity.ERROR }
end, { silent = true })
