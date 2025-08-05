-- Turn line numbering on
--
vim.opt.number = true
-- vim.opt.relativenumber = true

-- Configure TAB styling
--
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.splitbelow = true
vim.opt.splitright = true

-- Synchronizes the system clipboard
-- with nvim's clipboard
--
vim.opt.clipboard = "unnamedplus"

-- vim.opt.scrolloff = 999

-- JUL 30, 2025
-- Keep spelling turned off as default
--
vim.opt.spelllang = "en_us"
vim.opt.spell = false

-- AUG 05, 2025
-- vim.o.winborder = "rounded"
vim.o.cursorline = true
