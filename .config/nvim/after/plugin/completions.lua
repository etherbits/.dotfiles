require("luasnip").setup()
require("luasnip.loaders.from_vscode").lazy_load()

local cmp = require("cmp")

cmp.setup({
  snippet = {
    expand = function(args)
      require("luasnip").lsp_expand(args.body)
    end,
  },
  window = {
    --completion = cmp.config.window.bordered(),
    --documentation = cmp.config.window.bordered(),
  },
  mapping = cmp.mapping.preset.insert({
    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
    ["<C-f>"] = cmp.mapping.scroll_docs(4),
    ["<C-e>"] = cmp.mapping.abort(),
    ["<Tab>"] = cmp.mapping.confirm({ select = true }),
    ["<C-a>"] = cmp.mapping.complete(),

  }),
  sources = cmp.config.sources({
    { name = "nvim_lsp" },
    { name = 'luasnip' },
  }, {
    { name = "buffer" },
  })
})
