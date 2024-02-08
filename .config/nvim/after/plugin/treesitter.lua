local configs = require("nvim-treesitter.configs")

configs.setup({
  ensure_installed = { "c", "lua", "javascript", "typescript", "tsx", "html", "css", "python", "rust" },
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },
})
