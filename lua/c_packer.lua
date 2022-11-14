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

  use { 'wbthomason/packer.nvim', opt = true }

  use { 'lewis6991/impatient.nvim' }
  use { 'dstein64/vim-startuptime' }
  use { 'nvim-lua/plenary.nvim' }

  use { 'kyazdani42/nvim-tree.lua', opt = true }

  -- ████████ ██   ██ ███████ ███    ███ ███████
  --    ██    ██   ██ ██      ████  ████ ██
  --    ██    ███████ █████   ██ ████ ██ █████
  --    ██    ██   ██ ██      ██  ██  ██ ██
  --    ██    ██   ██ ███████ ██      ██ ███████
  --
  use { 'rmehri01/onenord.nvim', opt = true }
  use { 'sainnhe/gruvbox-material', opt = true }
  use { 'kyazdani42/nvim-web-devicons', opt = true }
  use { 'lukas-reineke/indent-blankline.nvim', opt = true }
  use { 'nvim-lualine/lualine.nvim', opt = true }
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

  use { 'nvim-treesitter/nvim-treesitter', opt = true }
  use { 'nvim-treesitter/playground', opt = true }
  use { 'nvim-treesitter/nvim-treesitter-textobjects', opt = true }
  use { 'p00f/nvim-ts-rainbow', opt = true }
  use { 'JoosepAlviste/nvim-ts-context-commentstring', opt = true }
  use { 'David-Kunz/treesitter-unit', opt = true }
  use { 'lewis6991/spellsitter.nvim', opt = true }
  use { 'https://github.com/cshuaimin/ssr.nvim', opt = true }

  -- ████████ ███████ ██      ███████ ███████  ██████  ██████  ██████  ███████
  --    ██    ██      ██      ██      ██      ██      ██    ██ ██   ██ ██
  --    ██    █████   ██      █████   ███████ ██      ██    ██ ██████  █████
  --    ██    ██      ██      ██           ██ ██      ██    ██ ██      ██
  --    ██    ███████ ███████ ███████ ███████  ██████  ██████  ██      ███████

  use { 'nvim-telescope/telescope.nvim', opt = true }
  use { 'nvim-telescope/telescope-fzf-native.nvim', opt = true }
  use { 'ThePrimeagen/harpoon', opt = true }

  -- ██      ███████ ██████
  -- ██      ██      ██   ██
  -- ██      ███████ ██████
  -- ██           ██ ██
  -- ███████ ███████ ██

  use { 'neovim/nvim-lspconfig', opt = true }
  use { 'jose-elias-alvarez/null-ls.nvim', opt = true }

  -- use { 'kosayoda/nvim-lightbulb', opt = true }
  use { 'SmiteshP/nvim-navic', opt = true }
  use { 'nvim-lua/lsp-status.nvim', opt = true }
  use { 'onsails/lspkind-nvim', opt = true }
  use { 'glepnir/lspsaga.nvim', opt = true }
  use { 'https://git.sr.ht/~whynothugo/lsp_lines.nvim', opt = true }
  use { 'windwp/nvim-ts-autotag', opt = true }
  -- use { 'ray-x/lsp_signature.nvim', opt = true }

  use { 'folke/neodev.nvim', opt = true }
  use { 'akinsho/flutter-tools.nvim', opt = true }

  --  ██████ ███    ███ ██████
  -- ██      ████  ████ ██   ██
  -- ██      ██ ████ ██ ██████
  -- ██      ██  ██  ██ ██
  --  ██████ ██      ██ ██

  use { 'rafamadriz/friendly-snippets', opt = true }
  use { 'hrsh7th/nvim-cmp' }
  use { 'L3MON4D3/LuaSnip', tag = 'v<CurrentMajor>.*', opt = true }
  use { 'saadparwaiz1/cmp_luasnip' }
  use { 'hrsh7th/cmp-nvim-lua' }
  use { 'hrsh7th/cmp-nvim-lsp' }
  use { 'hrsh7th/cmp-nvim-lsp-signature-help' }
  use { 'hrsh7th/cmp-buffer' }
  use { 'hrsh7th/cmp-path' }
  use { 'hrsh7th/cmp-cmdline' }
  use { 'ray-x/cmp-treesitter' }
  use { 'octaltree/cmp-look' }
  -- use { 'wxxxcxx/cmp-browser-source' } -- test get suggestions from all stings in all pages webs opend by chrome
  -- use { 'f3fora/cmp-spell' }
  -- use { 'hrsh7th/cmp-emoji' }

  -- ██████   █████  ██████
  -- ██   ██ ██   ██ ██   ██
  -- ██   ██ ███████ ██████
  -- ██   ██ ██   ██ ██
  -- ██████  ██   ██ ██

  use { 'mfussenegger/nvim-dap', opt = true }
  use { 'rcarriga/nvim-dap-ui', opt = true }
  use { 'theHamsta/nvim-dap-virtual-text', opt = true }
  use { 'leoluz/nvim-dap-go', opt = true }

  -- ███    ██ ███████ ██     ██
  -- ████   ██ ██      ██     ██
  -- ██ ██  ██ █████   ██  █  ██
  -- ██  ██ ██ ██      ██ ███ ██
  -- ██   ████ ███████  ███ ███

  use { 'ray-x/guihua.lua', run = 'cd lua/fzy && make', opt = true }
  use { 'ggandor/leap.nvim', opt = true }
  use { 'kylechui/nvim-surround', opt = true }
  use { 'numToStr/Comment.nvim', opt = true }
  use { 'kevinhwang91/nvim-hlslens', opt = true }

  --  -- git
  --  use { 'sindrets/diffview.nvim' }
  --  use { 'TimUntersberger/neogit' }
  use { 'airblade/vim-rooter', opt = true }
  use { 'lewis6991/gitsigns.nvim', opt = true }

  --  -- Misc
  use { '907th/vim-auto-save', opt = true }
  --  use { 'tjdevries/train.nvim' }

  --  -- Explorer & Terminal
  --  use { 'luukvbaal/nnn.nvim' }
  --  use { 'voldikss/vim-floaterm' }
  use { 'static-nvim/mkdir', opt = true }
  use { 'fedepujol/move.nvim', opt = true }
  use { 'WhoIsSethDaniel/lualine-lsp-progress.nvim', opt = true }
  use { 'barreiroleo/ltex-extra.nvim', opt = true }
  use { 'stevearc/overseer.nvim', opt = true }
end)

-- vim.cmd [[autocmd BufWritePost packer.lua source <afile> | PackerCompile]]
