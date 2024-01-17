require("poimandres").setup({
  disable_background = true,       -- disable background
  disable_float_background = false, -- disable background for floats
})

require("colorizer").setup({
  filetypes = {
    "*",

    -- Excluded filteypes.
    "!lazy", -- Commit hashes get highlighted sometimes.
  },
  user_default_options = {
    RGB = true,    -- #RGB hex codes.
    RRGGBB = true, -- #RRGGBB hex codes.
    RRGGBBAA = true, -- #RRGGBBAA hex codes.
    AARRGGBB = true, -- 0xAARRGGBB hex codes.
    names = false,

    rgb_fn = true, -- CSS rgb() and rgba() functions.
    hsl_fn = true, -- CSS hsl() and hsla() functions.
    css = true,  -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB, RRGGBB.
    css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn.
    tailwind = "both",

    mode = "background",
    virtualtext = "■",
  },
})

function SetColors(theme)
  theme = theme or "poimandres"
  vim.cmd.colorscheme(theme)

  vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#363A4A" })
end

SetColors()
