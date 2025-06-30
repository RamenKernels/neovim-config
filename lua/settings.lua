-- General
vim.o.number = true
vim.o.cursorline = true
vim.o.wrap = false
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
vim.cmd("syntax on")

-- Indentation
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true
vim.o.smartindent = true

-- Search
vim.o.hlsearch = false
vim.o.ignorecase = true

-- Visual
vim.o.termguicolors = true
vim.cmd("colorscheme github_dark_default")
vim.o.signcolumn = "yes"

-- Clipboard
vim.o.clipboard = "unnamedplus"

-- Performance
vim.o.updatetime = 300
vim.o.timeoutlen = 500

vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})
