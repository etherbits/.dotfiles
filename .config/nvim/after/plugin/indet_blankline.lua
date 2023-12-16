vim.api.nvim_set_hl(0, 'IndentBlankline', { fg = "#363A4A" })
vim.api.nvim_set_hl(0, 'IndentBlanklineScope', { fg = "#565A6A" })

require("ibl").setup({
  indent = { highlight = { "IndentBlankline" } },
  scope = {
    enabled = true,
    show_start = false,
    show_end = false,
    highlight = { "IndentBlanklineScope" },
  }
})
