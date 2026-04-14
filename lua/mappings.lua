require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<CR>", { desc = "telescope lists LSP document symbols" })
map("n", "<leader>gd", "<cmd>CodeDiff<cr>", { desc = "show git diff" })
