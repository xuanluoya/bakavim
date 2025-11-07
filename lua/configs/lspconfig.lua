require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "clangd", "lua-language-server", "mesonlsp", "ruff" }
vim.lsp.enable(servers)
