local configs = require("nvim-treesitter.configs")

configs.setup({
    ensure_installed = { "c", "lua", "javascript", "typescript", "html", "css", "python", "rust"},
    sync_install = false,
    highlight = { enable = true },
    indent = { enable = true },  
  })
