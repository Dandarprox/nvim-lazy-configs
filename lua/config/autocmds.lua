-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- local function add_undo_point()
--   vim.cmd("silent! undojoin | normal! a")
-- end
--
-- vim.api.nvim_create_autocmd("InsertLeave", {
--   pattern = "*",
--   callback = function()
--     add_undo_point()
--   end,
-- })

local brackets = { ["["] = "]", ["{"] = "}", ["("] = ")" }
for open, close in pairs(brackets) do
  vim.api.nvim_set_keymap("i", open, open .. close .. "<Left><C-g>u", { noremap = true, silent = true })
end

vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "vue" },
  callback = function()
    vim.b.autoformat = false
  end,
})
