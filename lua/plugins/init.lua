return {
  {
    "stevearc/conform.nvim",
    event = "BufWritePre",
    config = function()
      require "configs.conform"
    end,
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
    opts = {
      inlay_hints = { enabled = true },
    },
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim",
        "lua",
        "vimdoc",
        "html",
        "css",
        "rust",
        "c",
      },
    },
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    lazy = false,
  },

  {
    "ThePrimeagen/harpoon",
    lazy = false,
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  {
    "folke/trouble.nvim",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("trouble").setup()
    end,
  },

  {
    "saecki/crates.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
  },

  {
    "simrat39/symbols-outline.nvim",
    lazy = false,
    config = function()
      require("symbols-outline").setup()
    end,
  },

  {
    "lukas-reineke/indent-blankline.nvim",
    main = "ibl",
    opts = {},
    config = function()
      require("ibl").setup()
    end,
  },

  {
    "j-hui/fidget.nvim",
    lazy = false,
    config = function()
      require("fidget").setup()
    end,
  },
}
