vim.g.mapleader = ' '
vim.o.laststatus = 0
vim.opt.termguicolors = true
vim.wo.signcolumn = 'yes'

local vim_req = function(name)
  local nvim = vim.fn.stdpath 'config' .. '/lua/'
  vim.cmd('source ' .. nvim .. name .. '.vim')
end

vim_req 'c_theme'

vim.loop.new_timer():start(
  1,
  0,
  vim.schedule_wrap(function()
    local opt = vim.fn.stdpath 'data' .. '/site/pack/packer/opt/'
    for dir in io.popen('ls ' .. opt):lines() do
      vim.cmd('packadd ' .. dir)
    end
    -- third part vimL plugin
    vim_req 'c_octave'
    vim_req 'c_gdiff'
    -- lua config
    -- lspconfig not loaded with async, need reopen file again
    require 'c_lspkind'
    require 'c_lspsaga'
    require 'c_null-ls'
    require 'c_lspconfig'
    require 'c_cmp'
    require 'c_treesitter'
    require 'c_theme'
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
