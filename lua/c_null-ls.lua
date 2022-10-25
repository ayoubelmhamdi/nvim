-- if true then return end
local null_ls = require 'null-ls'

-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/formatting
-- https://github.com/jose-elias-alvarez/null-ls.nvim/tree/main/lua/null-ls/builtins/diagnostics
local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics
local completion = null_ls.builtins.completion
local code_actions = null_ls.builtins.code_actions
local hover = null_ls.builtins.hover

local lsp_formatting = function(bufnr)
  vim.lsp.buf.format {
    filter = function(client)
      -- apply whatever logic you want (in this example, we'll only use null-ls)
      return client.name == 'null-ls'
    end,
    bufnr = bufnr,
  }
end

-- if you want to set up formatting on save, you can use this as a callback
local augroup = vim.api.nvim_create_augroup('LspFormatting', {})

-- add to your shared on_attach callback
local on_attach = function(client, bufnr)
  if client.supports_method 'textDocument/formatting' then
    vim.api.nvim_clear_autocmds { group = augroup, buffer = bufnr }
    vim.api.nvim_create_autocmd('BufLeave', {
      group = augroup,
      buffer = bufnr,
      callback = function()
        lsp_formatting(bufnr)
      end,
    })
  end
end

-- if true then return end
--if true then return end
null_ls.setup {
  debug = false,
  sources = {
    -- All
    completion.spell,
    completion.luasnip,
    -- Rust
    formatting.rustfmt,
    --l Lua
    formatting.stylua,
    -- Bash
    diagnostics.shellcheck,
    code_actions.shellcheck,
    formatting.shellharden,
    -- C
    formatting.uncrustify,
    diagnostics.cppcheck,
    -- diagnostics.mlint,
    diagnostics.mh_lint,
    --     -- diagnostics.gccdiag,
    --     -- formatting.clang_format,
    --     -- formatting.astyle,
  },
  on_attach = on_attach,
}
