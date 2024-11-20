-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
vim.keymap.set("", "<C-k>", vim.diagnostic.goto_prev, { silent = true })
vim.keymap.set("", "<C-j>", vim.diagnostic.goto_next, { silent = true })
