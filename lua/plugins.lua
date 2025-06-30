return {
  { 'nvim-lua/plenary.nvim' },
  { 'nvim-lua/popup.nvim' },
  { 'nvim-tree/nvim-web-devicons' },
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  { 'nvim-telescope/telescope.nvim', dependencies = { 'plenary.nvim' } },
  { 'nvim-tree/nvim-tree.lua', dependencies = { "nvim-tree/nvim-web-devicons" },
  },
  { 'folke/noice.nvim', dependencies = { 'MunifTanjim/nui.nvim' } },
  {
    "akinsho/toggleterm.nvim",
    version = "*",
    config = function()
      require("toggleterm").setup({
        direction = "horizontal",
        open_mapping = [[<c-\>]],
      })
    end,
  },
  { 'lukas-reineke/indent-blankline.nvim' },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("lualine").setup({
        options = {
          theme = "auto",  -- or "tokyonight", "catppuccin", etc.
          icons_enabled = true,
          section_separators = "",
          component_separators = "|",
        },
      })
    end,
  },
  { 'hrsh7th/nvim-cmp' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'saadparwaiz1/cmp_luasnip' },
  { 'L3MON4D3/LuaSnip' },
  { "neovim/nvim-lspconfig" },
  { "williamboman/mason.nvim" },
  { "williamboman/mason-lspconfig.nvim" },
  { "folke/trouble.nvim" },
  { "nvimdev/lspsaga.nvim" },
  { "stevearc/conform.nvim" },
  { "mfussenegger/nvim-lint" },
  { "lewis6991/gitsigns.nvim" },
  { "tpope/vim-fugitive" },
  { "projekt0n/github-nvim-theme" },
  { "numToStr/Comment.nvim" },
  { "lukas-reineke/indent-blankline.nvim" },
  { "nvim-lualine/lualine.nvim" },
  { "folke/which-key.nvim" },
  { "ThePrimeagen/harpoon" },
  { "windwp/nvim-autopairs" },
  { "kylechui/nvim-surround" },
  { "echasnovski/mini.nvim", version = "*" },
  { "mfussenegger/nvim-dap" },
  { "rcarriga/nvim-dap-ui" },
}
