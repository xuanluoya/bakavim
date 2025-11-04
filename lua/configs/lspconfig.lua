require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls", "clangd", "lua-language-server", "mesonlsp", "hls", "ocamllsp" }
vim.lsp.enable(servers)
