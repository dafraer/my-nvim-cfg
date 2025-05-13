-- This file changes tab size to 4 spaces



tabsize = 4
-- Use spaces instead of literal tabs
vim.opt.expandtab = true

-- Number of spaces that a <Tab> counts for
vim.opt.tabstop = tabsize

-- Number of spaces to use for each step of (auto)indent
vim.opt.shiftwidth = tabsize

-- Number of spaces that a press of <Tab> or <BS> uses while editing
vim.opt.softtabstop = tabsize

-- (Optional) enable smart auto-indenting
vim.opt.smartindent = true

