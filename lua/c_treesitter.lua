-- now i use the option "event = 'CursorMoved'"
-- because: this plugin is started automatically,
-- after calling by require
-- TODO: try to find a way to link all treesitter-plugins
-- and deactivate auto-start of theme

--if true then return end

local treesitter = require 'nvim-treesitter.configs'
local i = require 'nvim-treesitter.install'

i.update { with_sync = true }

treesitter.setup {
  ensure_installed = {
    'c',
    --    'cpp',
    --    'comment',
    --    'dart',
    --    'html',
    --    'java',
    --    'javascript',
    --    'json',
    --    'kotlin',
    --    'latex',
    --    'lua',
    --    'make',
    --    'markdown',
    --    'markdown_inline',
    --    'python',
    --    'rust',
    --    'toml',
    --    'vim',
    --    'yaml',
  },
  sync_install = false,
  auto_install = false,

  highlight = {
    enable = true,
    -- enable = false,
  },
  rainbow = {
    enable = true,
    extended_mode = true,
  },
  textobjects = {
    lookahead = true,
    lsp_interop = {
      enable = true,
      border = 'rounded',
      peek_definition_code = {
        ['df'] = '@function.outer',
        ['dF'] = '@class.outer',
      },
    },
    select = {
      enable = true,
      lookahead = true,
      keymaps = {
        ['af'] = '@function.outer',
        ['if'] = '@function.inner',
        ['ap'] = '@parameter.outer',
        ['ip'] = '@parameter.inner',
        ['ab'] = '@block.outer',
        ['ib'] = '@block.inner',
        ['am'] = '@class.outer',
        ['im'] = '@class.inner',
        ['aa'] = '@call.outer',
        ['ia'] = '@call.inner',
        ['a/'] = '@comment.outer',
        ['i/'] = '@comment.inner',
      },
    },
  },
  context_commentstring = {
    enable = true,
    enable_autocmd = false,
  },
  refactor = {
    highlight_current_scope = { enable = true },
    highlight_definitions = {
      enable = true,
      clear_on_cursor_move = true,
    },
    navigation = {
      enable = true,
      keymaps = {
        goto_definition = 'gnd',
        list_definitions_lsp_fallback = 'gnD',
        list_definitions_toc = 'gO',
        goto_next_usage = '<a-*>',
        goto_previous_usage = '<a-#>',
      },
    },
    smart_rename = {
      enable = true,
      keymaps = {
        smart_rename = 'grr',
      },
    },
  },
  playground = {
    enable = true,
    disable = {},
    updatetime = 25, -- Debounced time for highlighting nodes in the playground from source code
    persist_queries = false, -- Whether the query persists across vim sessions
    keybindings = {
      toggle_query_editor = 'o',
      toggle_hl_groups = 'i',
      toggle_injected_languages = 't',
      toggle_anonymous_nodes = 'a',
      toggle_language_display = 'I',
      focus_language = 'f',
      unfocus_language = 'F',
      update = 'R',
      goto_node = '<cr>',
      show_help = '?',
    },
  },
  --
  --
}

require('spellsitter').setup {
  enable = true,
}

----|
----|     Tree-Sitter betta for matkab, with no support for highlight yet
----|

--local parser_config = require('nvim-treesitter.parsers').get_parser_configs()
--local tree_sitter_matlab = vim.fn.stdpath 'data' .. '/site/pack/packer/git/tree-sitter-matlab'
--parser_config.matlab = {
--  install_info = {
--    url = tree_sitter_matlab,
--    files = { 'src/parser.c' },
--    branch = 'main',
--  },
--  filetype = 'matlab', -- if filetype does not agrees with parser name
--}
