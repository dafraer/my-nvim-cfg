require("greeting")
require("tabsize")
require("useclipboard")
-- Make all yank/delete/cut operations go to the OS clipboard
vim.opt.clipboard = "unnamedplus"
