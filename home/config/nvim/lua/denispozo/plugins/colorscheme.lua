return {
 "rose-pine/neovim",
  priority = 1000,
  config = function()
    require("rose-pine").setup({
      variant = "main",
    })

    vim.cmd("colorscheme rose-pine")
  end
}

