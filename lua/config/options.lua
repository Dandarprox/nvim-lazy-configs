-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local Util = require("lazyvim.util")

vim.opt.guicursor = "i:block"

vim.opt.termguicolors = true

vim.opt.background = "dark"
vim.g.gruvbox_material_background = "hard"
vim.g.gruvbox_material_better_performance = 1

vim.opt.list = false
vim.opt.shell = "pwsh.exe"

-- Disable conceal
Util.toggle("conceallevel", false, { 0, 0 })
