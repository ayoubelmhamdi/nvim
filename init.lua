require 'impatient'

VIM_REQ = function(name)
  local nvim = vim.fn.stdpath 'config' .. '/lua/'
  vim.cmd('source ' .. nvim .. name .. '.vim')
end
VIM_REQ 'c_startup'

vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes('zzjk', true, false, true), 'm', true)
local load_plugin_after_nvim_opened = function()
  local opt = vim.fn.stdpath 'data' .. '/site/pack/packer/opt/'
  for dir in io.popen('ls ' .. opt):lines() do
    vim.cmd('packadd ' .. dir)
  end

  require 'c_cmp'
  require 'c_lspconfig'

  ---third part vimL plugin --
  ----------------------------
  require 'c_lspsaga'
  require 'c_lspkind'
  require 'c_null-ls'

  require 'c_treesitter'
  require 'c_ssr'
  require 'c_devicons'
  require 'c_indent-blankline'
  require 'c_lualine'
  require 'c_incline'
  --  require 'c_nvim-tree'

  require 'c_telescope'
  require 'c_autopair'
  require 'c_leap'
  require 'c_surround'
  require 'c_comment'
  require 'c_gitsigns'
  require 'c_hlslens'

  require 'c_overseer'
  require 'c_packer'
  require 'c_dap'
  require 'c_dap-c'

  require 'c_set-setting'
  require 'c_neovide'
  require 'c_keymapings'
  require 'c_autocmd'
  require 'c_function'
  VIM_REQ 'c_gdiff'

  -- require 'c_onenord'
  VIM_REQ 'c_theme'

  --
  -- Highlight should at the end
  -- VIM_REQ 'c_matlab'
end

load_plugin_after_nvim_opened()
-- local augroup = vim.api.nvim_create_augroup('BlazinglyFast', {})
-- vim.api.nvim_clear_autocmds { group = augroup }
-- vim.api.nvim_create_autocmd('CursorMoved', {
--   group = augroup,
--   callback = function()
--     load_plugin_after_nvim_opened()
--     pcall(vim.api.nvim_del_augroup_by_name, 'BlazinglyFast')
--   end,
-- })

vim.keymap.set('n', '<space>s', function()
  package.loaded.vf = nil
  vim.cmd 'w'
  require('vf').test()
end, {})
