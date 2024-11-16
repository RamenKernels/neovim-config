local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath("data") .. "/site/pack/packer/start/packer.nvim"
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({
      "git",
      "clone",
      "--depth",
      "1",
      "https://github.com/wbthomason/packer.nvim",
      install_path,
    })
    vim.cmd([[packadd packer.nvim]])
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost init.lua source <afile> | PackerSync
  augroup end
]])

require("packer").startup(function(use)
  use("wbthomason/packer.nvim")
  use("nvim-lua/plenary.nvim")
  

  use({
    "akinsho/toggleterm.nvim",
    config = function()
      require("toggleterm").setup()
    end,
  })

  use {
    "nvim-tree/nvim-tree.lua",
    requires = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {
        hijack_cursor = true,
        view = {
          centralize_selection = true,
          
        },
      }
    end,
  }

  use({
    "nvim-telescope/telescope.nvim",
    requires = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("telescope").setup()
    end,
  })


  use({
    "nvim-treesitter/nvim-treesitter",
    run = ":TSUpdate"
  })

  use({
    "akinsho/bufferline.nvim",
    tag = "*",
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup {
        options = {
          numbers = "buffer_id",
          seperator_style = "slant",
          show_buffer_close_icons = false,
          show_close_icon = false,
          offsets = {{filetype = "NvimTree", text = "File Explorer", padding = 1}},
        }
      }
    end,
  })

  use 'folke/tokyonight.nvim'

  if packer_bootstrap then
    require("packer").sync()
  end
end)

require('nvim-treesitter.configs').setup({
  ensure_installed = { "java" },
  highlight = {
    enable = true,
  },
})

local function open_tree_and_terminal()
  arg = vim.fn.argv(0)

  if arg == nil or arg == '' or vim.fn.isdirectory(arg) == 1 then
    vim.api.nvim_command("ToggleTerm")
    vim.api.nvim_command("NvimTreeToggle")
    vim.api.nvim_command("stopinsert")
  end
end

vim.api.nvim_create_autocmd("vimEnter", {
  callback = open_tree_and_terminal
})

vim.api.nvim_set_keymap("n", "<C-t>", ":ToggleTerm<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle<CR>", { noremap = true, silent = true})

vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<C-Left", ":vertical resize -2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Right>", ":vertical resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Up>", ":resize +2<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<C-Down>", ":resize -2<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("n", "<Tab>", ":BufferLineCycleNext<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<S-Tab>", ":BufferLineCyclePrev<CR>", { noremap = true, silent = true })

vim.api.nvim_set_keymap("t", "<Esc>", [[<C-\><C-n>]], { noremap = true, silent = true })

vim.o.number = true
vim.o.termguicolors = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.expandtab = true

vim.cmd("syntax on")

vim.cmd("colorscheme tokyonight-night")
