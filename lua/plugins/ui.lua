-- Enhancements to the original UI
--  - Render pictures
--  - Render Markdown
--  - Smooth scrolling
--  - Cursor animation

return {
  {
    "3rd/image.nvim",
    event = "VeryLazy",
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
  }
}
