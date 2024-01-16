vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", "<CMD>Oil<CR>", { desc = "Open parent directory" })
vim.keymap.set("n", "<C-s>", "<CMD>w<CR>", { desc = "Write" })
vim.keymap.set("n", "<leader> ", "<CMD>source %<CR>", { desc = "Source file"})

-- v center cursor on page jump
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- formating
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, {})

-- system clipboard
vim.keymap.set("x", "<leader>P", [["_dP]])
vim.keymap.set("n", "<leader>p", [["+p]])

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- copilot
vim.g.copilot_assume_mapped = true
vim.api.nvim_set_keymap("i", "<C-f>", "copilot#Accept()", { expr = true, silent = true })

-- rename
vim.keymap.set("n", "<F2>", ":IncRename ")
