    vim.cmd [[
        hi Indent1 guifg=#3A2A1A gui=nocombine
        hi Indent2 guifg=#3A2A1A gui=nocombine
        hi Indent3 guifg=#3A2A1A gui=nocombine
        hi Indent4 guifg=#3A2A1A gui=nocombine
        hi Indent5 guifg=#3A2A1A gui=nocombine
        hi Indent6 guifg=#3A2A1A gui=nocombine
    ]]

    require('indent_blankline').setup {
      show_end_of_line = true,
      char_highlight_list = {
        'Indent1',
        'Indent2',
        'Indent3',
        'Indent4',
        'Indent5',
        'Indent6',
      },
    }

    vim.cmd [[hi IndentBlanklineIndent1 guibg=#NONE ]]
    vim.cmd [[hi IndentBlanklineIndent2 guibg=#1a1a1a gui=nocombine]]
