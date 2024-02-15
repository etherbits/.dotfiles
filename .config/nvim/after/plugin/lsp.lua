require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "tsserver" },
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

local lsp_config = require("lspconfig")

lsp_config.lua_ls.setup({
  capabilities = capabilities,
  settings = {
    Lua = {
      diagnostics = {
        globals = { "vim", "bufnr" },
      },
    },
  },
})

lsp_config.tsserver.setup({
  capabilities = capabilities,
})

lsp_config.pyright.setup({
  capabilities = capabilities,
})

lsp_config.tailwindcss.setup({
  capabilities = capabilities,
})

lsp_config.clangd.setup({
  capabilities = capabilities,
})

vim.keymap.set("n", "H", vim.lsp.buf.hover, {})
vim.keymap.set("n", "ve", vim.diagnostic.open_float, {})
vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, {})
vim.keymap.set("n", "vr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, {})
