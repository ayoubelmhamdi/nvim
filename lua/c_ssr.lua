require('ssr').setup {
  min_width = 50,
  min_height = 5,
  keymaps = {
    close = 'q',
    next_match = 'n',
    prev_match = 'N',
    replace_all = '<leader><cr>',
  },
}
vim.keymap.set({ 'n', 'x' }, '<space>sr', function()
  require('ssr').open()
end)
