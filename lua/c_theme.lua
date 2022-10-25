vim.cmd.filetype 'plugin indent on'
vim.cmd.syntax 'on'

local colors = require('onenord.colors').load()
require('onenord').setup {
  theme = nil, -- "dark" or "light". Alternatively, remove the option and set vim.o.background instead
  borders = true, -- Split window borders
  fade_nc = false, -- Fade non-current windows, making them more distinguishable
  -- Style that is applied to various groups: see `highlight-args` for options
  styles = {
    comments = 'italic',
    strings = 'bold',
    keywords = 'NONE',
    functions = 'bold',
    variables = 'NONE',
    diagnostics = 'underline',
  },
  disable = {
    background = false, -- Disable setting the background color
    cursorline = false, -- Disable the cursorline
    eob_lines = true, -- Hide the end-of-buffer lines
  },
  -- Inverse highlight for different groups
  inverse = {
    match_paren = true,
  },
  custom_highlights = {

    -- NvimTree
    NvimTreeOpenedFile = { fg = colors.diff_add, style = 'bold' },

    -- Local Syntax
    Conditional = { fg = colors.blue },
    Number = { fg = colors.purple },
    Operator = { fg = colors.dark_blue },
    Statement = { fg = colors.fg },
    MatchParen = { fg = colors.light_purple, bg = colors.none, style = 'bold' },

    -- TreeSitter
    TSBoolean = { fg = colors.yellow },
    TSConstructor = { fg = colors.fg },
    TSConditional = { fg = colors.blue },
    TSConstBuiltin = { fg = colors.light_green },
    TSConstMacro = { fg = colors.light_green },
    TSFloat = { fg = colors.purple },
    TSFunction = { fg = colors.cyan },
    TSKeyword = { fg = colors.blue },
    TSKeywordReturn = { fg = colors.blue },
    TSKeywordFunction = { fg = colors.cyan },
    TSNumber = { fg = colors.purple },
    TSOperator = { fg = colors.blue },
    TSParameter = { fg = colors.fg },
    TSPunctBracket = { fg = colors.cyan },
    TSPunctDelimiter = { fg = colors.cyan },
    TSStringEscape = { fg = colors.purple },
    TSType = { fg = colors.blue },
    -- TSField = { fg = colors.red, bg = colors.yellow },

    LspReferenceText = { style = 'NONE', bg = colors.cyan },
    LspReferenceRead = { style = 'NONE', bg = colors.cyan },
    LspReferenceWrite = { style = 'NONE', bg = colors.cyan },

    --ayoub
    SpellBad = { fg = colors.none, bg = colors.none, style = 'italic,underline', sp = colors.red },
  }, -- Overwrite default highlight groups
  custom_colors = {}, -- Overwrite default colors
}

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
