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
        end
      },

      flavour = "mocha",

      integrations = {
        notify = true,
        treesitter = true,
        cmp = true,
        gitsigns = true,
        noice = true,

        indent_blankline = {
          enabled = true,
          colored_indent_levels = false
        },

        native_lsp = {
          enabled = true
        }
      }
    })

    vim.cmd.colorscheme "catppuccin"
  end,
}
