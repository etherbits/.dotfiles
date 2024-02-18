local telescope = require("telescope")

telescope.setup({
  defaults = {

    file_ignore_patterns = { "node%_modules/.*", "%.git/*" },
  },
  extensions = {
    ["ui-select"] = {
      require("telescope.themes").get_dropdown({})
    }
  }
})

telescope.load_extension("ui-select")

local builtin = require("telescope.builtin")

local find_with_hidden_files = function()
  return function()
    builtin.find_files({
      find_command = { "rg", "--files", "--hidden" }
    })
  end
end

vim.keymap.set("n", "<leader>pf", builtin.find_files, {})
vim.keymap.set("n", "<leader>phf", find_with_hidden_files(), {})
vim.keymap.set('n', '<leader>pg', builtin.git_files, {})
vim.keymap.set('n', '<leader>ps', function()
  builtin.grep_string({ search = vim.fn.input("Grep > ") })
end)
