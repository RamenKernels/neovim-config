-- General
vim.o.number = true
vim.o.cursorline = true
vim.o.wrap = false
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.cmd("syntax on")

-- Indentation
vim.o.tabstop = 8
vim.o.shiftwidth = 8
vim.o.expandtab = true
vim.o.smartindent = true

-- Search
vim.o.hlsearch = false
vim.o.ignorecase = true

-- Visual
vim.o.termguicolors = true
vim.cmd("colorscheme tokyonight-night")
vim.o.signcolumn = "yes"

-- Clipboard
vim.o.clipboard = "unnamedplus"

-- Performance
vim.o.updatetime = 300
vim.o.timeoutlen = 500
