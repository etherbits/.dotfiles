return {
  { "nvim-treesitter/nvim-treesitter", build = ":TSUpdate" },
  "williamboman/mason.nvim",
  "williamboman/mason-lspconfig.nvim",
  "neovim/nvim-lspconfig",
  "nvimtools/none-ls.nvim",
  "hrsh7th/nvim-cmp",
  "hrsh7th/cmp-nvim-lsp",
  {
    "L3MON4D3/LuaSnip",
    version = "v2.*",
    build = "make install_jsregexp",
    dependencies = { "saadparwaiz1/cmp_luasnip", "rafamadriz/friendly-snippets" },
  },
  {
    "stevearc/oil.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.5",
    dependencies = { "nvim-lua/plenary.nvim" },
  },
  "nvim-telescope/telescope-ui-select.nvim",
  { "mfussenegger/nvim-dap",           dependencies = { "rcarriga/nvim-dap-ui" } },
  { "folke/neodev.nvim" },
  "numToStr/Navigator.nvim",
  "github/copilot.vim",
  {
    "olivercederborg/poimandres.nvim",
    lazy = false,
    priority = 1000,
  },
}
