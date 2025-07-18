return {
  { 'nvim-lua/plenary.nvim' },
  { 'nvim-lua/popup.nvim' },
  { 'nvim-tree/nvim-web-devicons' },
  { 'nvim-treesitter/nvim-treesitter', build = ':TSUpdate' },
  { 'nvim-telescope/telescope.nvim', dependencies = { 'plenary.nvim' } },
  { "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    config = function()
      require("nvim-tree").setup {}
    end,
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
  { 
    "martineausimon/nvim-lilypond-suite",
    opts = {
      lilypond = {
      mappings = {
      player = "<F3>",
      compile = "<F5>",
      open_pdf = "<F6>",
      switch_buffers = "<A-Space>",
      insert_version = "<F4>",
      hyphenation = "<F12>",
      hyphenation_change_lang = "<F11>",
      insert_hyphen = "<leader>ih",
      add_hyphen = "<leader>ah",
      del_next_hyphen = "<leader>dh",
      del_prev_hyphen = "<leader>dH",
      },
      options = {
        pitches_language = "default",
        hyphenation_language = "en_DEFAULT",
        output = "pdf",
        backend = nil,
        main_file = "main.ly",
        main_folder = "%:p:h",
        include_dir = nil,
        pdf_viewer = nil,
        errors = {
          diagnostics = true,
          quickfix = "external",
          filtered_lines = {
            "compilation successfully completed",
            "search path"
          }
        },
      },
      },
      latex = {
        mappings = {
          compile = "<F5>",
          open_pdf = "<F6>",
          lilypond_syntax = "<F3>"
        },
        options = {
          lilypond_book_flags = nil,
          clean_logs = false,
          main_file = "main.tex",
          main_folder = "%:p:h",
          include_dir = nil,
          lilypond_syntax_au = "BufEnter",
          pdf_viewer = nil,
          errors = {
            diagnostics = true,
            quickfix = "external",
            filtered_lines = {
              "Missing character",
              "LaTeX manual or LaTeX Companion",
              "for immediate help.",
              "Overfull \\hbox",
              "^%s%.%.%.",
              "%s+%(.*%)"
            }
          },
        },
      },
      texinfo = {
        mappings = {
          compile = "<F5>",
          open_pdf = "<F6>",
          lilypond_syntax = "<F3>"
        },
        options = {
          lilypond_book_flags = "--pdf",
          clean_logs = false,
          main_file = "main.texi",
          main_folder = "%:p:h",
          lilypond_syntax_au = "BufEnter",
          pdf_viewer = nil,
          errors = {
            diagnostics = true,
            quickfix = "external",
            filtered_lines = {
              "Missing character",
              "LaTeX manual or LaTeX Companion",
              "for immediate help.",
              "Overfull \\hbox",
              "^%s%.%.%.",
              "%s+%(.*%)"
            }
          },
        },
      },
      player = {
        mappings = {
          quit = "q",
          play_pause = "p",
          loop = "<A-l>",
          backward = "h",
          small_backward = "<S-h>",
          forward = "l",
          small_forward = "<S-l>",
          decrease_speed = "j",
          increase_speed = "k",
          halve_speed = "<S-j>",
          double_speed = "<S-k>"
        },
        options = {
          row = 1,
          col = "99%",
          width = "37",
          height = "1",
          border_style = "single",
          winhighlight = "Normal:Normal,FloatBorder:Normal,FloatTitle:Normal",
          midi_synth = "fluidsynth",
          fluidsynth_flags = nil,
          timidity_flags = nil,
          ffmpeg_flags = nil,
          audio_format = "mp3",
          mpv_flags = {
            "--msg-level=cplayer=no,ffmpeg=no,alsa=no",
            "--loop",
            "--config-dir=/dev/null",
            "--no-video"
          }
        },
      },
    }
  }
}
