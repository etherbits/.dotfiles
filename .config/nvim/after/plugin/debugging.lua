local dap = require("dap")

vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, {})
vim.keymap.set("n", "<leader>dc", dap.continue, {})

-- for go setup https://youtu.be/oYzZxi3SSnM?list=PLsz00TDipIffreIaUNk64KxTIkQaGguqn&t=572
