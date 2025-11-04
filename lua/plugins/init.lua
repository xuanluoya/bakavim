return {
  { "rose-pine/neovim",                       name = "rose-pine" },

  { "stevearc/conform.nvim",                  event = "BufWritePre",                              opts = require "configs.conform" },
  { "nvim-treesitter/nvim-treesitter",        build = ":TSUpdate",                                opts = require "configs.nvim-treesitter" },
  { "neovim/nvim-lspconfig",                  config = function() require "configs.lspconfig" end },
  { "nvim-tree/nvim-tree.lua",                opts = require "configs.nvim-tree" },

  { import = "plugins.vim-visual-multi" },
  { import = "plugins.neoscroll" },
  { import = "plugins.smear-cursor" },
  { import = "plugins.render-markdown" },
  { import = "plugins.outline" },
  { import = "plugins.dropbar" },
  { import = "plugins.whichkey" },
  { import = "plugins.image" },
  { import = "plugins.tiny-inline-diagnostic" },
}
