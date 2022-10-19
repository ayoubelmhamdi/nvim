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

  use {
    'wbthomason/packer.nvim',
    opt = true,
    --cmd = "require('c_keymaps').packer", -- idont know wy not loaded keymap if it's opt
    -- how i can do it without use events
    config = "require('c_packer')",
    cmd = {
      'PackerCompile',
      'PackerClean',
      'PackerInstall',
      'PackerSync',
    },
  }

  use { 'lewis6991/impatient.nvim' }
  use { 'nathom/filetype.nvim' }
  use { 'dstein64/vim-startuptime' }
  use { 'nvim-lua/plenary.nvim', module = 'plenary' }

  use {
    'windwp/nvim-autopairs',
    config = "require('c_autopair')",
    after = 'nvim-cmp',
  }

  use {
    'lewis6991/gitsigns.nvim',
    event = 'UIEnter',
    ft = 'gitcommit',
    config = "require('c_gitsigns')",
  }

  -- ████████ ██   ██ ███████ ███    ███ ███████
  --    ██    ██   ██ ██      ████  ████ ██
  --    ██    ███████ █████   ██ ████ ██ █████
  --    ██    ██   ██ ██      ██  ██  ██ ██
  --    ██    ██   ██ ███████ ██      ██ ███████
  --

  use {
    'sainnhe/gruvbox-material',
    event = 'UIEnter',
    --event = 'CursorMoved',
    --after = 'lualine',
    config = "require('c_gruvbox-material')",
  }

  use {
    'kyazdani42/nvim-web-devicons',
    module = 'nvim-web-devicons',
    event = 'UIEnter',
    config = "require('c_devicons')",
  }

  --*   -- Theme
  use {
    'lukas-reineke/indent-blankline.nvim',
    module='indent-blankline.nvim',
    --event = 'UIEnter',
    opt=true,
    config = "require('c_indent-blankline')",
  }

  use {
    'nvim-lualine/lualine.nvim',
    --event = 'CursorMoved',
    module = 'lualine',
    --event = 'UIEnter',
    config = "require('c_lualine')",
  }

  --@ use {
  --@ 	'norcalli/nvim-colorizer.lua' ,
  --@ 	event = 'CursorMoved',
  --@ 	config = "require('c_')",
  --@ }
  --@ use {
  --@   'tjdevries/colorbuddy.nvim',
  --@   event = 'CursorMoved',
  --@   config = "require('c_')",
  --@ }
  --
  --@  use {
  --@    'ellisonleao/gruvbox.nvim',
  --@    event = 'CursorMoved',
  --@    config = "require('c_')",
  --@  }

  -- ████████ ██████  ███████ ███████       ███████ ██ ████████ ████████ ███████ ██████
  --    ██    ██   ██ ██      ██            ██      ██    ██       ██    ██      ██   ██
  --    ██    ██████  █████   █████   █████ ███████ ██    ██       ██    █████   ██████
  --    ██    ██   ██ ██      ██                 ██ ██    ██       ██    ██      ██   ██
  --    ██    ██   ██ ███████ ███████       ███████ ██    ██       ██    ███████ ██   ██

  use {
    'nvim-treesitter/nvim-treesitter',
    --event = { 'BufRead', 'BufNewFile' },
    module = 'nvim-treesitter',
    run = ':TSUpdate',
    config = "require('c_treesitter')",
  }

  use {
    'nvim-treesitter/playground',
    module = 'playground',
  }

  use {
    'nvim-treesitter/nvim-treesitter-textobjects',
    module = 'nvim-treesitter-textobjects',
  }

  use {
    'p00f/nvim-ts-rainbow',
    module = 'nvim-ts-rainbow',
  }

  use {
    'JoosepAlviste/nvim-ts-context-commentstring',
    module = 'ts_context_commentstring',
  }

  use {
    'David-Kunz/treesitter-unit',
    module = 'treesitter-unit',
  }

  use {
    'lewis6991/spellsitter.nvim',
    module = 'spellsitter',
  }

  -- ████████ ███████ ██      ███████ ███████  ██████  ██████  ██████  ███████
  --    ██    ██      ██      ██      ██      ██      ██    ██ ██   ██ ██
  --    ██    █████   ██      █████   ███████ ██      ██    ██ ██████  █████
  --    ██    ██      ██      ██           ██ ██      ██    ██ ██      ██
  --    ██    ███████ ███████ ███████ ███████  ██████  ██████  ██      ███████

  use {
    'nvim-telescope/telescope.nvim',
    --cmd = "require('c_keymaps').telescope()",
    config = "require('c_telescope')",
    event = 'UIEnter',
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = 'make',
    module = 'telescope._extensions.fzf',
  }

  use {
    'ThePrimeagen/harpoon',
    module = 'harpoon',
    --after='telescope-nvim'
  }

  -- ██      ███████ ██████
  -- ██      ██      ██   ██
  -- ██      ███████ ██████
  -- ██           ██ ██
  -- ███████ ███████ ██

  use {
    'neovim/nvim-lspconfig',
    --opt = true,
    config = "require('c_lspconfig')",
    --event = 'CursorHold' -- 40ms lazy lazy load
    event = 'UIEnter', -- 40ms
    --event = 'VimEnter' -- 180ms E:Telescope
    --event = 'BufReadPre' -- 50ms E: telescope
    --event = 'InsertEnter', -- 59ms
    --event = 'BufWinEnter' -- 180ms
    --event = 'BufEnter', -- 180ms
  }

  use {
    'folke/neodev.nvim',
    module='neodev'
  }
  use {
    'kosayoda/nvim-lightbulb',
    module = 'nvim-lightbulb',
  }
  use {
    'SmiteshP/nvim-navic',
    module = 'nvim-navic',
  }

  use {
    'nvim-lua/lsp-status.nvim',
    module = 'lsp-status',
    --config = "require('c_')",
  }
  use {
    'onsails/lspkind-nvim',
    --after= 'lspconfig',
    module = 'lspkind',
    wants = 'lspconfig',
    config = "require('c_lspkind')",
  }

  use {
    'jose-elias-alvarez/null-ls.nvim',
    --event = 'UIEnter',
    --after = 'lspconfig',
    module='null-ls',
    config = "require('c_null-ls')",
  }

  use {
    'akinsho/flutter-tools.nvim',
    --after= 'lspconfig',
    --config = "require('c_')",
  }

  use {
    'glepnir/lspsaga.nvim',
    module = 'lspsaga.nvim',
    --config = "require('c_')",
  }

  use {
    'ray-x/lsp_signature.nvim',
    module = 'lsp_signature.nvim',
    --config = "require('c_')",
  }

  use {
    'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
    module = 'lsp_lines.nvim',
    --config = "require('c_')",
  }

  --  ██████ ███    ███ ██████
  -- ██      ████  ████ ██   ██
  -- ██      ██ ████ ██ ██████
  -- ██      ██  ██  ██ ██
  --  ██████ ██      ██ ██

  use {
    'windwp/nvim-ts-autotag',
    --event = 'InsertEnter',
    after = 'nvim-treesitter',
  }

  use {
    'kyazdani42/nvim-tree.lua',
    cmd = 'NvimTreeToggle',
    config = "require('c_nvim-tree')",
  }

  -- nvim-cmp
  use { 'rafamadriz/friendly-snippets', event = 'InsertEnter' }
  use {
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    after = 'friendly-snippets',
    config = "require('c_cmp')",
    module = 'cmp',
  }
  use {
    'L3MON4D3/LuaSnip',
    wants = 'friendly-snippets',
    after = 'nvim-cmp',
    module = 'luasnip',
  }
  use {
    'saadparwaiz1/cmp_luasnip',
    after = 'LuaSnip',
  }

  use {
    'hrsh7th/cmp-nvim-lua',
    after = 'cmp_luasnip',
    module = 'cmp-nvim-lua',
  }
  use {
    'hrsh7th/cmp-nvim-lsp',
    after = 'cmp-nvim-lua',
    module = 'cmp-nvim-lsp',
  }
  use {
    'hrsh7th/cmp-nvim-lsp-signature-help',
    after = 'cmp-nvim-lsp',
    mudule = 'cmp-nvim-lsp-signature-help',
  }
  use {
    'hrsh7th/cmp-buffer',
    after = 'cmp-nvim-lsp-signature-help',
    module = 'cmp-buffer',
  }
  use {
    'hrsh7th/cmp-path',
    after = 'cmp-buffer',
    module = 'cmp-path',
  }
  use {
    'hrsh7th/cmp-cmdline',
    after = 'cmp-path',
    module = 'cmp-cmdline',
  }
  use {
    'ray-x/cmp-treesitter',
    after = 'cmp-cmdline',
    module = 'cmp-treesitter',
  }
  use {
    'octaltree/cmp-look',
    after = 'cmp-treesitter',
    module = 'cmp-look',
  }
  --test get suggestions from all stings in all pages webs opend by chrome
  use {
    'wxxxcxx/cmp-browser-source',
    after = 'cmp-look',
    module = 'cmp-browser-source',
  }
  -- use { 'f3fora/cmp-spell' ,
  --    after = 'LuaSnip',
  -- }
  -- use { 'hrsh7th/cmp-emoji' ,
  --    after = 'LuaSnip',
  -- }

  -- ██████   █████  ██████
  -- ██   ██ ██   ██ ██   ██
  -- ██   ██ ███████ ██████
  -- ██   ██ ██   ██ ██
  -- ██████  ██   ██ ██

  use {
    'mfussenegger/nvim-dap',
    event = 'UIEnter',
    config = function()
      require 'c_dap'
      require 'c_dap-c'
    end,
  }

  use {
    'rcarriga/nvim-dap-ui',
    module = 'dapui',
  }

  use {
    'theHamsta/nvim-dap-virtual-text',
    module = 'nvim-dap-virtual-text',
  }

  use {
    'leoluz/nvim-dap-go',
    module = 'dap-go',
  }

  -- ███    ██ ███████ ██     ██
  -- ████   ██ ██      ██     ██
  -- ██ ██  ██ █████   ██  █  ██
  -- ██  ██ ██ ██      ██ ███ ██
  -- ██   ████ ███████  ███ ███

  use {
    'ray-x/guihua.lua',
    run = 'cd lua/fzy && make',
    module = 'guihua',
  }
  --  -- like hop
   use {
     'ggandor/leap.nvim',
     event = 'CursorMoved',
     config = "require('c_leap')",
   }
  --  fold
  --  use {
  --    'kevinhwang91/nvim-ufo',
  --    event = 'CursorMoved',
  --    config = "require('c_')",
  --    requires = 'kevinhwang91/promise-async' }
  --  }
  use {
    'kylechui/nvim-surround',
    event = 'UIEnter',
    config = "require('c_surround')",
  }
  use {
    'numToStr/Comment.nvim',
    event = 'CursorMoved',
    config = "require('c_comment')",
  }
  use {
    'kevinhwang91/nvim-hlslens',
    module = 'hlslens',
    config = "require('c_hlslens')",
  }

  --*   -- git
  --*   use { 'sindrets/diffview.nvim' }
  --*   use { 'TimUntersberger/neogit' }
  use {
    'airblade/vim-rooter',
    event = 'UIEnter',
  }

  --*   -- Misc
  use {
    '907th/vim-auto-save',
    event = 'UIEnter',
  }
  --*   use { 'tjdevries/train.nvim' }
  --*   -- use { 'phaazon/hop.nvim' }
  --*   use { 'folke/todo-comments.nvim' }

  --*   -- Explorer & Terminal
  --*   use { 'luukvbaal/nnn.nvim' }
  --*   use { 'voldikss/vim-floaterm' }
  --*   use { 'static-nvim/mkdir' }
  use {
    'fedepujol/move.nvim',
    event = 'UIEnter',
  }

  use {
    'WhoIsSethDaniel/lualine-lsp-progress.nvim',
    module = 'lualine-lsp-progress.nvim',
    --	event = 'CursorMoved',
  }

  use {
    'barreiroleo/ltex-extra.nvim',
    module = 'ltex_extra',
  }

  use {
    'stevearc/overseer.nvim',
    event = 'UIEnter',
    config = "require('c_overseer')",
  }
end)

-- vim.cmd [[autocmd BufWritePost packer.lua source <afile> | PackerCompile]]
