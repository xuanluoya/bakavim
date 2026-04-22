-- Enhancements to the original UI

return {
  {
    "3rd/image.nvim",
    event = "BufReadPost",
    opts = {
      processor = "magick_cli",
      integrations = {
        markdown = {
          only_render_image_at_cursor = true,
          only_render_image_at_cursor_mode = "popup",
          download_remote_images = true,
        },
      },

    },
  },

  {
    'MeanderingProgrammer/render-markdown.nvim',
    ft = { "markdown", "quarto" },
    dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
  },

  {
    "karb94/neoscroll.nvim",
    event = "VeryLazy",
    config = function()
      require('neoscroll').setup()
    end
  },

  {
    "sphamba/smear-cursor.nvim",
    event = "VeryLazy",
    opts = {}
  },

  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {},
    dependencies = {
      "MunifTanjim/nui.nvim",
      "rcarriga/nvim-notify",
    },
    config = function()
      require("noice").setup({
        lsp = {
          signature = {
            enabled = false,
          },
        },
      })
    end
  },

  {
    'Bekaboo/dropbar.nvim',
    event = "BufReadPost",
  }
}
