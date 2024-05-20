return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  dependencies = {
    "windwp/nvim-ts-autotag",
  },

  config = function()
    local treesitter = require("nvim-treesitter.configs")

    treesitter.setup({
      highlight = { 
        enable = true, 
      },
      indent = { enable = true },
      autotag = { 
        enable = true, 
      },
      ensure_installed = { 
        "bash",
        "c",
        "cpp",
        "dockerfile",
        "gitignore",
        "html",
        "java",
        "javascript",
        "json",
        "kotlin",
        "lua",
        "make",
        "markdown",
        "properties",
        "proto",
        "query",
        "sql", 
        "terraform",
        "typescript",
        "vim",
        "vimdoc",
        "xml",
        "yaml",
        "vimdoc",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
    })
  end,
}

