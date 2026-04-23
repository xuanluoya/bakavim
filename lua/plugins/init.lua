return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    opts = require "configs.conform",
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require "configs.lspconfig"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = require "configs.nvim-treesitter"
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts = require "configs.nvim-tree"
  },
}
