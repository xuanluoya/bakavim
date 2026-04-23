-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

M.base46 = {
  theme = "rosepine-dawn",
  -- transparency = true,
  theme_toggle = { "rosepine", "rosepine-dawn" },

  hl_override = {
    -- ["@variable"] = { italic = true },
    -- ["@parameter"] = { italic = true },
    -- ["@keyword"] = { italic = true },
    ["@comment"] = { italic = true },
  }
}

M.ui = {
  -- tabufline = {
  --   lazyload = false
  -- },

  -- telescope = { style = "bordered" },

  cmp = {
    style = "default",
    icons_left = true,
  },

  -- statusline = {
  --   theme = "default",
  -- },
  statusline = {
    theme = "minimal",
    -- separator_style = "round",
  },
}



M.nvdash = {
  load_on_startup = true,
  header = {
    "⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⠀⡠⠲⠠⠀⢠⠂⡴⠀⡴⠂⡔⠀⠀⠀⠀⠀⢀⠀⠀⠀⢆⠀⠀⠀⡆⠀⠀",
    "⠀ ⠀⠀⠀⠀⠀⠀⠀⠀⣐⠪⣁⠣⠤⣇⡮⢁⣺⠋⡐⠄⠀⠀⠀⢀⢀⢲⠀⠀⠀⠈⣆⠀⠀⠈⡀⠀",
    "⠀ ⠀⠀⠀⠀⠀⠀⠀⢠⠃⢣⡽⢀⡛⣬⢋⣾⡍⣰⡉⠀⠀⠀⠠⢎⠚⣸⠀⠀⠀⠰⢸⡀⠀⠀⡇⠀",
    "⠀ ⠀⠀⠀⠀⠀⠀⠀⠈⢰⡈⡇⢸⢷⣿⣾⣜⡳⢩⠁⠀⢀⠝⡭⠉⢩⣿⠀⠀⠐⠒⣼⡋⣴⢶⡧⡁",
    " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠸⣷⣹⢸⣸⣿⣿⣿⠃⣿⠀⡠⢊⠼⣤⣴⣼⣇⡇⣧⠀⠀⣿⢫⢭⡿⡇⠁",
    " ⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⡿⣮⣼⠛⡛⡻⠟⠠⣈⠜⢁⠊⢰⣿⣿⣿⣿⢱⡌⠀⠸⣏⢷⡷⠁⠃⠀",
    " ⠀⠀⠀⢠⠀⠒⠒⠀⠤⠄⠿⣟⡘⠀⠀⠁⠀⠀⠏⠀⠀⠀⠘⡉⡽⡻⢃⡾⠀⢀⢻⣽⠞⠘⠀⢰⠀",
    " ⠀⠀⠀⡌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠁⠀⠒⠂⠠⠤⠀⢀⣀⡁⠠⡺⠁⠠⢑⡲⠁⠀⠀⡇⠈⡀",
    " ⠀⠀⢀⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⢠⣶⢫⣛⠀⠀⠀⢸⡀⠇",
    " ⠀⠀⡈⠀⠀⡶⠶⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣈⣋⠶⣏⡄⠀⠀⠸⣧⠀",
    " ⠠⠩⡙⠀⢰⣇⣠⡼⠀⠀⢀⡴⣿⠀⠀⣰⠀⢀⣤⠀⠀⠀⠀⠀⠀⢀⠀⠻⣼⠣⡽⣡⠀⠀⠀⡴⡆",
    " ⠐⠠⠀⠀⣾⣀⣉⡷⠀⣤⠿⠤⣿⠀⢀⣯⠶⠋⠀⠀⢀⣴⣿⠀⠀⢠⠈⠷⣧⣛⠴⣫⠆⠀⠀⢠⠃",
    " ⠈⡇⠀⠀⠈⠉⠉⠀⠘⠃⠀⠀⢿⠀⣸⠛⢧⡀⠀⣠⠾⠥⣿⠀⠀⢰⡁⠄⢗⠻⣩⣓⣻⡄⠀⠠⠆",
    " ⢰⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠀⠈⠙⠘⠋⠀⠀⢿⠀⠀⢀⡆⠀⢸⣏⡳⣆⠧⢿⣆⠀⠀",
    " ⡌⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢘⢷⠀⠸⠽⣺⡌⣏⠶⣯⣆⠀",
    " ⠑⠒⠀⠠⠄⠀⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢟⡌⠛⡋⠍⡽⡿⣌⢳⡏⣼⡇",
    " ⠀⠀⠀⠀⠀⠀⠀⠀⠈⠝⠀⠒⠂⡤⠤⠀⣀⡀⠀⠀⠀⠀⠀⠀⢰⡶⣬⣆⠱⢨⣟⠶⣌⢳⠇⠡⡇",
    " ⠀⠀⠀⠀⠀⠀⢀⣔⣃⡀⠀⠀⠀⡇⢀⠀⠀⠺⣈⣍⣄⣶⣒⣠⡤⣦⣐⣠⣃⣹⣉⣺⣬⡟⠀⣰⠀",
    "                                      ",
  },
}

return M
