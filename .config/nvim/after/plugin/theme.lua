function SetColors(theme)
  theme = theme or "poimandres"
  vim.cmd.colorscheme(theme)


  vim.api.nvim_set_hl(0, 'ColorColumn', { bg = "#363A4A" })
end

SetColors()
