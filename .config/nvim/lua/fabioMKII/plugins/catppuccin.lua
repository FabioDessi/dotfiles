return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,

  config = function()
    require("catppuccin").setup({
      flavour = "mocha",

      integrations = {
        notify = true,
        treesitter = true,
        cmp = true,
      }
    })

    vim.cmd.colorscheme "catppuccin"
  end,
}
