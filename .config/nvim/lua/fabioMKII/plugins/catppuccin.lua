return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,

  config = function()
    require("catppuccin").setup({
      highlight_overrides = {
        mocha = function(mocha)
          return {
            LineNr = { fg = mocha.text },
          }
        end,
      },

      flavour = "mocha",

      integrations = {
        cmp = true,
        gitsigns = true,
        neotree = true,
        indent_blankline = {
          enabled = true,
          colored_indent_levels = false,
        },

        mason = true,
        native_lsp = {
          enabled = true,
        },

        noice = true,
        notify = true,
        telescope = {
          enabled = true,
        },

        treesitter = true,
      },
    })

    vim.cmd.colorscheme("catppuccin")
  end,
}
