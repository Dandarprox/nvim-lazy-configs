-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local base_opts = { noremap = true, silent = true }
local Util = require("lazyvim.util")
local cmp = require("cmp")
local map = Util.safe_keymap_set

map("n", "<leader>am", "<S-v>$%", base_opts)

map("n", "<leader>gg", function()
  Util.terminal({ "gitui" }, { cwd = Util.root(), esc_esc = false, ctrl_hjkl = false })
end, { desc = "GITUI (root dir)" })

map("n", "<leader>af", ":s/,/,\\r/g<CR><ESC>", {
  noremap = true,
  silent = true,
  desc = "Add new line after commas",
})
map("n", "<leader>cc", ":CopilotChat ", {
  nowait = true,
  noremap = true,
  silent = true,
  desc = "Copilot Chat",
})
map("n", "<leader>fg", ":lua require('telescope').extensions.live_grep_args.live_grep_args()<CR>")
map("n", "<leader>tn", ":Telescope notify<CR>")

cmp.setup({
  mapping = {
    ["<C-x>"] = cmp.mapping.complete(),
  },
})
map("n", "<leader>nn", ":NoNeckPain<CR>")
map("v", "<leader>x", '"+y')
