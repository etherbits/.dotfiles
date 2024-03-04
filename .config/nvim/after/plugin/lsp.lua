require("mason").setup()

require("mason-lspconfig").setup({
  ensure_installed = { "lua_ls", "tsserver" },
  automatic_installation = false,
})

local capabilities = require("cmp_nvim_lsp").default_capabilities()

require("mason-lspconfig").setup_handlers {
  -- The first entry (without a key) will be the default handler
  -- and will be called for each installed server that doesn't have
  -- a dedicated handler.
  function(server_name) -- default handler (optional)
    require("lspconfig")[server_name].setup {
      capabilities = capabilities,
    }
  end,

  -- Next, you can provide a dedicated handler for specific servers.
  -- For example, a handler override for the `rust_analyzer`:
  -- ["rust_analyzer"] = function()
  --   require("rust-tools").setup {}
  -- end
}


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
