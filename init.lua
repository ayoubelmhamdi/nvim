local vim_req = function(name)
  local nvim = vim.fn.stdpath 'config' .. '/lua/'
  vim.cmd('source ' .. nvim .. name .. '.vim')
end

vim_req 'c_startup'

vim.loop.new_timer():start(
  1,
  0,
  vim.schedule_wrap(function()
    local opt = vim.fn.stdpath 'data' .. '/site/pack/packer/opt/'
    for dir in io.popen('ls ' .. opt):lines() do
      vim.cmd('packadd ' .. dir)
    end
    -- octave overwrite by theme, and make error with treesitter
    vim_req 'c_theme'
    require 'c_theme'
    -- third part vimL plugin
    vim_req 'c_gdiff'
    vim_req 'c_octave'
    -- lua config
    -- lspconfig not loaded with async, need reopen file again
    require 'c_lspkind'
    require 'c_lspsaga'
    require 'c_null-ls'
    require 'c_lspconfig'
    require 'c_cmp'
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
  end)
)
