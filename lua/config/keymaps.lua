-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local base_opts = { noremap = true, silent = true }

vim.api.nvim_set_keymap("n", "<leader>am", "<S-v>$%", base_opts)
