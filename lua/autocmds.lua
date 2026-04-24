require "nvchad.autocmds"

-- For Neovide
vim.o.guifont = "Maple Mono NF CN:h17"

vim.g.neovide_window_blurred = true

vim.g.neovide_floating_shadow = true
vim.g.neovide_floating_z_height = 10
vim.g.neovide_light_angle_degrees = 45
vim.g.neovide_light_radius = 5

vim.g.neovide_show_border = true
vim.g.neovide_hide_mouse_when_typing = true
vim.g.experimental_layer_grouping = true
vim.g.neovide_confirm_quit = true
vim.g.neovide_fullscreen = true

vim.g.neovide_cursor_vfx_mode = "railgun"

if vim.g.neovide then
  local function save() vim.cmd.write() end
  local function copy() vim.cmd([[normal! "+y]]) end
  local function paste() vim.api.nvim_paste(vim.fn.getreg("+"), true, -1) end

  vim.keymap.set({ "n", "i", "v" }, "<D-s>", save, { desc = "Save" })
  vim.keymap.set("v", "<D-c>", copy, { silent = true, desc = "Copy" })
  vim.keymap.set({ "n", "i", "v", "c", "t" }, "<D-v>", paste, { silent = true, desc = "Paste" })
end
