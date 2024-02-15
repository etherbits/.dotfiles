local configs = require("nvim-treesitter.configs")

configs.setup({
  ensure_installed = { "c", "lua", "javascript", "typescript", "tsx", "html", "css", "python", "rust" },
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },
  autotag = {
    enable = true,
  },
  context_commentstring = {
    config = {
      javascript = {
        __default = '// %s',
        jsx_element = '{/* %s */}',
        jsx_fragment = '{/* %s */}',
        jsx_attribute = '// %s',
        comment = '// %s',
      },
      typescript = { __default = '// %s', __multiline = '/* %s */' },
    },
  }
})

require("Comment").setup({
  pre_hook =
      require('ts_context_commentstring.integrations.comment_nvim').create_pre_hook(),
})
