
require("catppuccin").setup({
  -- disable_background = true,       -- disable background
  -- disable_float_background = false, -- disable background for floats
  -- style = "moon",
  -- transparent = true,
})

require("catppuccin").setup({
    flavour = "macchiato", -- latte, frappe, macchiato, mocha
    background = { -- :h background
        light = "latte",
        dark = "mocha",
    },
    transparent_background = true
})

vim.g.tokyonight_colors = {
  bg_float = "none"
}

require('lualine').setup {
    options = {
        theme = "catppuccin"
        -- ... the rest of your lualine config
    }
}

require("colorizer").setup({
  filetypes = {
    "*",

    -- Excluded filteypes.
    "!lazy", -- Commit hashes get highlighted sometimes.
  },
  user_default_options = {
    RGB = true,      -- #RGB hex codes.
    RRGGBB = true,   -- #RRGGBB hex codes.
    RRGGBBAA = true, -- #RRGGBBAA hex codes.
    AARRGGBB = true, -- 0xAARRGGBB hex codes.
    names = false,

    rgb_fn = true, -- CSS rgb() and rgba() functions.
    hsl_fn = true, -- CSS hsl() and hsla() functions.
    css = true,    -- Enable all CSS features: rgb_fn, hsl_fn, names, RGB...
    css_fn = true, -- Enable all CSS *functions*: rgb_fn, hsl_fn.
    tailwind = "both",

    mode = "background",
    virtualtext = "■",
  },
})

require("nvim-treesitter.configs").setup {
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false
    },
}


function SetColors(theme)
  theme = theme or "catppuccin"
  vim.cmd.colorscheme(theme)

  -- vim.api.nvim_set_hl(0, "ColorColumn", { bg = "#363A4A" })
  vim.api.nvim_set_hl(0, "LineNr", { fg = "#959DAB" })
end

SetColors()
