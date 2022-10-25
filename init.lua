VIM_REQ = function(name)
  local nvim = vim.fn.stdpath 'config' .. '/lua/'
  vim.cmd('source ' .. nvim .. name .. '.vim')
end
VIM_REQ 'c_startup'
-- lsp+cmp(deps like luasnip) not work with (loop and packadd)

-- not work coorrectly with vim.loop
-- require 'c_lspconfig'

vim.defer_fn(function()
  local opt = vim.fn.stdpath 'data' .. '/site/pack/packer/opt/'
  for dir in io.popen('ls ' .. opt):lines() do
    vim.cmd('packadd ' .. dir)
  end

  --
  -- cmp
  -- it suppert load config inside `vim.loop`
  -- but must add to the `rtp` after `vim.loop`
  --
  require 'c_lspconfig'
  vim.cmd [[LspStart]]

  require 'c_cmp'

  VIM_REQ 'c_gdiff'
  VIM_REQ 'c_octave'

  VIM_REQ 'c_theme'
  require 'c_theme'

  --
  -- third part vimL plugin
  --
  require 'c_lspsaga'
  require 'c_lspkind'
  require 'c_null-ls'
  require 'c_treesitter'
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
end, 2)
