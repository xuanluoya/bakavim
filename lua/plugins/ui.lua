-- Enhancements to the original UI

return {
  {
    "3rd/image.nvim",
    cond = not vim.g.neovide,
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
    "OXY2DEV/markview.nvim",
    event = "BufReadPost",
  },

  {
    "karb94/neoscroll.nvim",
    cond = not vim.g.neovide,
    event = "VeryLazy",
    config = function()
      require('neoscroll').setup()
    end
  },

  {
    'Bekaboo/dropbar.nvim',
    event = "BufReadPost",
  }
}
