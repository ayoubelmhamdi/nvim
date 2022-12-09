local fn = vim.fn
local install_path = fn.stdpath 'data' .. '/site/pack/packer/opt/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  PACKER_BOOTSTRAP = fn.system {
    'git',
    'clone',
    '--depth',
    '1',
    'https://github.com/wbthomason/packer.nvim',
    install_path,
  }
end

vim.cmd 'packadd packer.nvim'
local status_ok, packer = pcall(require, 'packer')

if not status_ok then
  print 'Unable to load packer'
  return
end

-- local lazy_load = function(plugin, timer)
--   if plugin then
--     local timer = timer or 0
--     vim.defer_fn(function()
--       require('packer').loader(plugin)
--     end, timer)
--   end
-- end

packer.startup(function(use)
  packer.init {
    max_jobs = 4,
    display = {
      open_cmd = '84vnew [packer]',
      working_sym = '北 ',
      error_sym = '✗  ',
      done_sym = '✓  ',
      removed_sym = '  ',
      moved_sym = '-> ',
      open_fn = function()
        return require('packer.util').float { border = 'rounded' }
      end,
    },
    depth = 1, -- Git clone depth
    clone_timeout = 600, -- Timeout, in seconds, for git clones
  }

  -- ██████  ██      ██    ██  ██████  ██ ███    ██
  -- ██   ██ ██      ██    ██ ██       ██ ████   ██
  -- ██████  ██      ██    ██ ██   ███ ██ ██ ██  ██
  -- ██      ██      ██    ██ ██    ██ ██ ██  ██ ██
  -- ██      ███████  ██████   ██████  ██ ██   ████

  use { 'wbthomason/packer.nvim', opt = false }

  use { 'lewis6991/impatient.nvim' }
  use { 'dstein64/vim-startuptime' }
  use { 'nvim-lua/plenary.nvim' }

  -- use { 'kyazdani42/nvim-tree.lua' }
  use 'https://github.com/oberblastmeister/zoom.nvim'
  use '/data/projects/lua/vf.nvim'
  -- ████████ ██   ██ ███████ ███    ███ ███████
  --    ██    ██   ██ ██      ████  ████ ██
  --    ██    ███████ █████   ██ ████ ██ █████
  --    ██    ██   ██ ██      ██  ██  ██ ██
  --    ██    ██   ██ ███████ ██      ██ ███████
  --
  use { 'https://github.com/roflolilolmao/oceanic-next.nvim', opt = false }
  use { 'rmehri01/onenord.nvim', opt = false }
  use { 'sainnhe/gruvbox-material', opt = false }
  use { 'kyazdani42/nvim-web-devicons', opt = false }
  use { 'lukas-reineke/indent-blankline.nvim', opt = false }
  use { 'nvim-lualine/lualine.nvim', opt = false }
  use { 'b0o/incline.nvim' }

  --@ use {
  --@ 	'norcalli/nvim-colorizer.lua' ,
  --@ }
  --@ use {
  --@   'tjdevries/colorbuddy.nvim',
  --@ }
  --
  --@  use {
  --@    'ellisonleao/gruvbox.nvim',
  --@  }

  -- ████████ ██████  ███████ ███████       ███████ ██ ████████ ████████ ███████ ██████
  --    ██    ██   ██ ██      ██            ██      ██    ██       ██    ██      ██   ██
  --    ██    ██████  █████   █████   █████ ███████ ██    ██       ██    █████   ██████
  --    ██    ██   ██ ██      ██                 ██ ██    ██       ██    ██      ██   ██
  --    ██    ██   ██ ███████ ███████       ███████ ██    ██       ██    ███████ ██   ██

  use { 'nvim-treesitter/nvim-treesitter', opt = false }
  use { 'nvim-treesitter/playground', opt = false }
  use { 'nvim-treesitter/nvim-treesitter-textobjects', opt = false }
  use { 'p00f/nvim-ts-rainbow', opt = false }
  use { 'JoosepAlviste/nvim-ts-context-commentstring', opt = false }
  use { 'David-Kunz/treesitter-unit', opt = false }
  use { 'lewis6991/spellsitter.nvim', opt = false }
  use { 'https://github.com/cshuaimin/ssr.nvim', opt = false }

  -- ████████ ███████ ██      ███████ ███████  ██████  ██████  ██████  ███████
  --    ██    ██      ██      ██      ██      ██      ██    ██ ██   ██ ██
  --    ██    █████   ██      █████   ███████ ██      ██    ██ ██████  █████
  --    ██    ██      ██      ██           ██ ██      ██    ██ ██      ██
  --    ██    ███████ ███████ ███████ ███████  ██████  ██████  ██      ███████

  use { 'nvim-telescope/telescope.nvim', opt = false }
  use { 'nvim-telescope/telescope-fzf-native.nvim', opt = false }
  use { 'ThePrimeagen/harpoon', opt = false }

  -- ██      ███████ ██████
  -- ██      ██      ██   ██
  -- ██      ███████ ██████
  -- ██           ██ ██
  -- ███████ ███████ ██

  use { 'neovim/nvim-lspconfig', opt = false }
  use { 'jose-elias-alvarez/null-ls.nvim', opt = false }

  -- use { 'kosayoda/nvim-lightbulb', opt = false }
  use { 'SmiteshP/nvim-navic', opt = false }
  use { 'nvim-lua/lsp-status.nvim', opt = false }
  use { 'onsails/lspkind-nvim', opt = false }
  use { 'glepnir/lspsaga.nvim', opt = false }
  use { 'https://git.sr.ht/~whynothugo/lsp_lines.nvim', opt = false }
  use { 'windwp/nvim-ts-autotag', opt = false }
  -- use { 'ray-x/lsp_signature.nvim', opt = false }

  use { 'folke/neodev.nvim', opt = false }
  use { 'akinsho/flutter-tools.nvim', opt = false }

  --  ██████ ███    ███ ██████
  -- ██      ████  ████ ██   ██
  -- ██      ██ ████ ██ ██████
  -- ██      ██  ██  ██ ██
  --  ██████ ██      ██ ██

  use { 'rafamadriz/friendly-snippets', opt = false }
  use { 'L3MON4D3/LuaSnip', opt = false }
  use { 'hrsh7th/nvim-cmp' }
  use { 'saadparwaiz1/cmp_luasnip' }
  use { 'hrsh7th/cmp-nvim-lua' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-nvim-lsp-signature-help' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'ray-x/cmp-treesitter' }
  use { 'octaltree/cmp-look' }
  use { 'github.com/lukas-reineke/cmp-rg' }
  use { 'https://github.com/mstanciu552/cmp-matlab' }
  use { 'https://github.com/tzachar/cmp-tabnine', run = './install.sh' }
  -- use { 'wxxxcxx/cmp-browser-source' } -- test get suggestions from all stings in all pages webs opend by chrome
  -- use { 'f3fora/cmp-spell' }
  -- use { 'hrsh7th/cmp-emoji' }

  -- ██████   █████  ██████
  -- ██   ██ ██   ██ ██   ██
  -- ██   ██ ███████ ██████
  -- ██   ██ ██   ██ ██
  -- ██████  ██   ██ ██

  use { 'mfussenegger/nvim-dap', opt = false }
  use { 'rcarriga/nvim-dap-ui', opt = false }
  use { 'theHamsta/nvim-dap-virtual-text', opt = false }
  use { 'leoluz/nvim-dap-go', opt = false }

  -- ███    ██ ███████ ██     ██
  -- ████   ██ ██      ██     ██
  -- ██ ██  ██ █████   ██  █  ██
  -- ██  ██ ██ ██      ██ ███ ██
  -- ██   ████ ███████  ███ ███

  use { 'ray-x/guihua.lua', run = 'cd lua/fzy && make', opt = false }
  use { 'ggandor/leap.nvim', opt = false }
  use { 'kylechui/nvim-surround', opt = false }
  use { 'numToStr/Comment.nvim', opt = false }
  use { 'kevinhwang91/nvim-hlslens', opt = false }

  --  -- git
  --  use { 'sindrets/diffview.nvim' }
  --  use { 'TimUntersberger/neogit' }
  use { 'airblade/vim-rooter', opt = false }
  use { 'lewis6991/gitsigns.nvim', opt = false }

  --  -- Misc
  use { '907th/vim-auto-save', opt = false }
  --  use { 'tjdevries/train.nvim' }

  --  -- Explorer & Terminal
  --  use { 'luukvbaal/nnn.nvim' }
  --  use { 'voldikss/vim-floaterm' }
  use { 'static-nvim/mkdir', opt = false }
  use { 'fedepujol/move.nvim', opt = false }
  use { 'WhoIsSethDaniel/lualine-lsp-progress.nvim', opt = false }
  use { 'barreiroleo/ltex-extra.nvim', opt = false }
  use { 'stevearc/overseer.nvim', opt = false }
end)

-- vim.cmd [[autocmd BufWritePost packer.lua source <afile> | PackerCompile]]
