require("packer").startup(function(use)
  use("wbthomason/packer.nvim")
  use("nvim-lua/plenary.nvim")

  use("folke/snacks.nvim")

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

--  use({
--    "akinsho/bufferline.nvim",
--    tag = "*",
--    requires = 'nvim-tree/nvim-web-devicons',
--    config = function()
--      require('bufferline').setup {
--        options = {
--          numbers = "buffer_id",
--          seperator_style = "slant",
--          show_buffer_close_icons = false,
--          show_close_icon = false,
--          offsets = {{filetype = "NvimTree", text = "File Explorer", padding = 1}},
--        }
--      }
--    end,
--  })

  use({
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-cmdline',
      'saadparwaiz1/cmp_luasnip'
    },
    config = function()
      local cmp = require'cmp'

      cmp.setup {
        snippet = {
          expand = function(args)
            require('luasnip').lsp_expand(args.body)
          end,
        },
        mapping = {
          ['<Tab>'] = cmp.mapping.select_next_item(),
          ['<S-Tab>'] = cmp.mapping.select_prev_item(),
          ['<S-CR>'] = cmp.mapping.confirm({ select = true }),
        },
        sources = cmp.config.sources({
          { name = 'nvim-lsp' },
          { name = 'luasnip' },
        }, {
          { name = 'buffer' },
        })
      }
    end,
  })

  use 'folke/tokyonight.nvim'
  use 'colors.basictheme'

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
