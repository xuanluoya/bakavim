require "nvchad.mappings"

local map = vim.keymap.set
local wk = require("which-key")

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "nvimtree toggle window" })
map("n", "<leader>l", vim.diagnostic.setloclist, { desc = "List LSP diagnostics" })

wk.add({
  { "<leader>d", group = "Debug", icon = "" },

  { "<leader>db", "<cmd>lua require'dap'.toggle_breakpoint()<CR>", desc = "Toggle Breakpoint", icon = "" },
  { "<leader>dB", "<cmd>lua require'dap'.set_breakpoint(vim.fn.input('Condition: '))<CR>", desc = "Conditional Breakpoint", icon = "" },
  { "<leader>dl", "<cmd>lua require'dap'.set_breakpoint(nil, nil, vim.fn.input('Log: '))<CR>", desc = "Log Point", icon = "" },
  { "<leader>dc", "<cmd>lua require'dap'.continue()<CR>", desc = "Continue/Start", icon = "" },
  { "<leader>di", "<cmd>lua require'dap'.step_into()<CR>", desc = "Step Into", icon = "" },
  { "<leader>do", "<cmd>lua require'dap'.step_over()<CR>", desc = "Step Over", icon = "" },
  { "<leader>dO", "<cmd>lua require'dap'.step_out()<CR>", desc = "Step Out", icon = "" },
  { "<leader>dr", "<cmd>lua require'dap'.repl.open()<CR>", desc = "Open REPL", icon = "" },
  { "<leader>du", "<cmd>lua require'dapui'.toggle()<CR>", desc = "Toggle DAP UI", icon = "" },
})
