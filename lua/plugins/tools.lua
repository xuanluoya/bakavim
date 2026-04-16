return {
  {
    "esmuellert/codediff.nvim",
    cmd = "CodeDiff",
  },

  {
    "m4xshen/hardtime.nvim",
    lazy = false,
    dependencies = { "MunifTanjim/nui.nvim" },
    config = function()
      require("hardtime").setup()
    end
  },
}
