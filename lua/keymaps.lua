local map = vim.keymap.set
local opts = { noremap = true, silent = true }

vim.g.mapleader = " "
vim.g.maplocalleader = " "

map("n", "<leader>t", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })
map("n", "<leader>e", function()
  require("nvim-tree.api").tree.toggle()
end, { desc = "Toggle file tree" })

map("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
map("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
map("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
map("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

map("n", "<C-Left", ":vertical resize -2<CR>", { noremap = true, silent = true })
map("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })
map("n", "<C-Up>", ":resize +2<CR>", { noremap = true, silent = true })
map("n", "<C-Down>", ":resize -2<CR>", { noremap = true, silent = true })

map("n", "<C-Shift-h>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })

map("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })
map("n", "<leader>h", ":nohlsearch<CR>", opts)

map("v", "<", "<gv", { noremap = true, silent = true })
map("v", ">", ">gv", { noremap = true, silent = true })

vim.api.nvim_create_user_command("WQ", "wa | qa", {})
