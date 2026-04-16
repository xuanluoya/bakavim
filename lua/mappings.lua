require "nvchad.mappings"

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("n", "<leader>fs", "<cmd>Telescope lsp_document_symbols<CR>", { desc = "telescope lists LSP document symbols" })
map("n", "<leader>gd", "<cmd>CodeDiff<cr>", { desc = "show git diff" })

local dropbar_api = require('dropbar.api')
map('n', '<Leader>;', dropbar_api.pick, { desc = 'Pick symbols in winbar' })
map('n', '[;', dropbar_api.goto_context_start, { desc = 'Go to start of current context' })
map('n', '];', dropbar_api.select_next_context, { desc = 'Select next context' })
