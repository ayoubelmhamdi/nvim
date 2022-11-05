local onenord = require('onenord.colors').load()

local colors = {
  fg = '#C8D0E0',
  fg_light = '#E5E9F0',
  bg = '#2E3440',
  gray = '#646A76',
  light_gray = '#6C7A96',
  cyan = '#88C0D0',
  blue = '#81A1C1',
  dark_blue = '#5E81AC',
  green = '#A3BE8C',
  light_green = '#8FBCBB',
  dark_red = '#BF616A',
  red = '#D57780',
  light_red = '#DE878F',
  pink = '#E85B7A',
  dark_pink = '#E44675',
  orange = '#D08F70',
  yellow = '#EBCB8B',
  purple = '#B988B0',
  light_purple = '#B48EAD',
  none = 'NONE',
}

local custom_highlights = {
  -- Normal = { bg = colors.none },
  NvimTreeVertSplit = { fg = onenord.selection, bg = onenord.none },
  LspReferenceText = { bg = onenord.highlight, style = onenord.none },
  LspReferenceRead = { bg = onenord.highlight, style = onenord.none },
  LspReferenceWrite = { bg = onenord.highlight, style = onenord.none },
  TelescopeSelection = { bg = onenord.highlight },
  IndentBlanklineContextChar = { fg = onenord.blue },
  NormalFloat = { bg = onenord.bg },
  TSConstructor = { fg = colors.pink, bg = colors.bg },
  -- spell
  SpellBad = { fg = colors.none, bg = colors.none, style = 'italic,underline', sp = colors.red },

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
}

local navic_highlights = {
  File = onenord.blue,
  Module = onenord.blue,
  Namespace = onenord.yellow,
  Package = onenord.orange,
  Class = onenord.yellow,
  Method = onenord.purple,
  Property = onenord.blue,
  Field = onenord.blue,
  Constructor = onenord.yellow,
  Enum = onenord.yellow,
  Interface = onenord.yellow,
  Function = onenord.purple,
  Variable = onenord.blue,
  Constant = onenord.orange,
  String = onenord.green,
  Number = onenord.orange,
  Boolean = onenord.orange,
  Array = onenord.yellow,
  Object = onenord.orange,
  Key = onenord.purple,
  Null = onenord.red,
  EnumMember = onenord.cyan,
  Struct = onenord.yellow,
  Event = onenord.purple,
  Operator = onenord.purple,
  TypeParameter = onenord.yellow,
}
local custom_colors = {
  bg = colors.primary,
  active = colors.secondary,
}

require('onenord').setup {
  custom_highlights = custom_highlights,
  custom_colors = custom_colors,
  styles = {
    comments = 'italic,bold',
    strings = 'bold',
    keywords = 'NONE',
    functions = 'bold',
    variables = 'NONE',
    diagnostics = 'NONE',
  },
  disable = {
    background = true, -- Disable setting the background color
    cursorline = false,
    eob_lines = true, -- Hide the end-of-buffer lines
  },
}
