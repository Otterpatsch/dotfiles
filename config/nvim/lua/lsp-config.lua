require("mason").setup({
  ensure_installed={
     "debugpy",
     "mypy",
     "ruff",
   },
  })
require("mason-lspconfig").setup({
    ensure_installed = {"lua_ls", "pyright"}
  })

local on_attach= function(_,_)
  vim.keymap.set('n', '<space>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n', '<space>ca', vim.lsp.buf.code_action, {})

  vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n', 'gr', vim.lsp.buf.references, {})
  vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
end
local capabilities = require("cmp_nvim_lsp").default_capabilities()


require("lspconfig").lua_ls.setup {
  on_attach=on_attach,
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
    },
  },
}
require("lspconfig").pyright.setup {
  on_attach=on_attach,
  capabilities = capabilities,
  filetypes = {"python"}
}
