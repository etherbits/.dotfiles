return {
  'nvim-lua/popup.nvim',
  'numToStr/Navigator.nvim',
  {
    "nvim-telescope/telescope-file-browser.nvim",
    dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim" }
  },
  "lukas-reineke/indent-blankline.nvim",
  {
    'filipdutescu/renamer.nvim',
    branch = 'master'
  },
  'windwp/nvim-ts-autotag',
  {
    'olivercederborg/poimandres.nvim',
  },
  'github/copilot.vim',
  {
    'lewis6991/gitsigns.nvim',
    -- tag = 'release' -- To use the latest release (do not use this if you run Neovim nightly or dev builds!)
  },
  {
    'nvim-lualine/lualine.nvim',
    requires = { 'nvim-tree/nvim-web-devicons', opt = true }
  },
  "nvim-tree/nvim-tree.lua",
  {
    'AckslD/muren.nvim',
    config = true,
  },
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },
  "ggandor/leap.nvim",
  "numToStr/Comment.nvim",
  "Pocco81/auto-save.nvim",
  "jiangmiao/auto-pairs",
  "rafamadriz/friendly-snippets",
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  'hrsh7th/cmp-nvim-lsp',
  'hrsh7th/cmp-buffer',
  'hrsh7th/cmp-path',
  'hrsh7th/cmp-cmdline',
  'hrsh7th/nvim-cmp',
  { 'L3MON4D3/LuaSnip', dependencies = { "rafamadriz/friendly-snippets" } },
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
  "folke/zen-mode.nvim",
  "nvim-telescope/telescope.nvim",
  "ThePrimeagen/harpoon",
  {
    "m4xshen/smartcolumn.nvim",
    opts = {}
  },
  {
    'stevearc/oil.nvim',
    opts = {},
    -- Optional dependencies
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  "sindrets/diffview.nvim",
  "folke/todo-comments.nvim",
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      -- add any options here
    },
    dependencies = {
      -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
      "MunifTanjim/nui.nvim",
      -- OPTIONAL:
      --   `nvim-notify` is only needed, if you want to use the notification view.
      --   If not available, we use `mini` as the fallback
      "rcarriga/nvim-notify",
    }
  },
  'norcalli/nvim-colorizer.lua'
}
