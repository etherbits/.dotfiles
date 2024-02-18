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

lsp_config.pyright.setup({
  capabilities = capabilities,
})

lsp_config.tailwindcss.setup({
  capabilities = capabilities,
})

lsp_config.clangd.setup({
  capabilities = capabilities,
})

lsp_config.cssls.setup({
  capabilities = capabilities,
})

vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
vim.keymap.set("n", "<leader>hd", vim.diagnostic.open_float, {})
vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, {})
vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, {})
vim.keymap.set("n", "<leader>vr", vim.lsp.buf.references, {})
vim.keymap.set("n", "<leader>vca", vim.lsp.buf.code_action, {})

vim.keymap.set("n", "<leader>tsi", "<CMD>TSToolsAddMissingImports<CR>", {})
vim.keymap.set("n", "<leader>tss", "<CMD>TSToolsOrganizeImports<CR>", {})
vim.keymap.set("n", "<leader>tsr", "<CMD>TSToolsRemoveUnused<CR>", {})
vim.keymap.set("n", "<leader>tsf", "<CMD>TSToolsFixAll<CR>", {})

