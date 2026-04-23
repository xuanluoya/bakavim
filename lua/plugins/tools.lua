return {
  {
    "esmuellert/codediff.nvim",
    cmd = "CodeDiff",
  },

  {
    "f-person/auto-dark-mode.nvim",
    lazy = false,
    opts = function()
      local config = require("nvconfig")

      return {
        set_dark_mode = function()
          if config.base46.theme ~= config.base46.theme_toggle[1] then
            require("base46").toggle_theme()
          end
        end,
        set_light_mode = function()
          if config.base46.theme ~= config.base46.theme_toggle[2] then
            require("base46").toggle_theme()
          end
        end,
      }
    end

  }
}
