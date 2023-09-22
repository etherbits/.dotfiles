return { 'nvim-lua/popup.nvim', 'sudormrfbin/cheatsheet.nvim',
  'numToStr/Navigator.nvim',
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },
  "lukas-reineke/indent-blankline.nvim",
  {
    'AlexvZyl/nordic.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require 'nordic'.load()
    end
  },
  {
    'filipdutescu/renamer.nvim',
    branch = 'master'
  },
  'windwp/nvim-ts-autotag',
  {
    'olivercederborg/poimandres.nvim',
    config = function()
      require('poimandres').setup {
        -- leave this setup function empty for default config
        -- or refer to the configuration section
        -- for configuration options
      }
    end
  },
  {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
  },
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  },
  "rmehri01/onenord.nvim",
  "folke/tokyonight.nvim",
  "ful1e5/onedark.nvim",
  "Alexis12119/nightly.nvim",
  "rebelot/kanagawa.nvim",
  { "catppuccin/nvim",             name = "catppuccin" },
  { 'projekt0n/github-nvim-theme', version = 'v0.0.7' },
  'nyoom-engineering/oxocarbon.nvim',
  { "CRAG666/code_runner.nvim", config = true },
  "ggandor/leap.nvim", "numToStr/Comment.nvim", "Pocco81/auto-save.nvim", "jiangmiao/auto-pairs",
  "MunifTanjim/prettier.nvim",
  "jose-elias-alvarez/null-ls.nvim",
  "rafamadriz/friendly-snippets",
  "VonHeikemen/lsp-zero.nvim",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  'hrsh7th/cmp-nvim-lsp', 'hrsh7th/cmp-buffer'
, 'hrsh7th/cmp-path'
, 'hrsh7th/cmp-cmdline'
, 'hrsh7th/nvim-cmp',
  { 'L3MON4D3/LuaSnip',         dependencies = { "rafamadriz/friendly-snippets" } },
  'saadparwaiz1/cmp_luasnip',
  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },
  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "nvim-treesitter/nvim-treesitter",
    dependencies = { 'JoosepAlviste/nvim-ts-context-commentstring', },
    build = ":TSUpdate"
  },
  "nvim-treesitter/nvim-treesitter-context",
  "nvim-lua/plenary.nvim",
  {
    "iamcco/markdown-preview.nvim",
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
  },
  'jghauser/follow-md-links.nvim',
  {
    "nvim-telescope/telescope.nvim", tag = "0.1.1" },
  "ThePrimeagen/harpoon"
}
