return {
  {
  'stevearc/oil.nvim',
  opts = {},
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
 },
"williamboman/mason.nvim",
"williamboman/mason-lspconfig.nvim",
"neovim/nvim-lspconfig",
{
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' }
    }
}
