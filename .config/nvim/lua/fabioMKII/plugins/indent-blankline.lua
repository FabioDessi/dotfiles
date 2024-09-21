return {
  'lukas-reineke/indent-blankline.nvim',
  main = "ibl",

  opts = {
    indent = { highlight = highlight, char = "|" },
    whitespace = {
      highlight = {
        "CursorColumn",
        "Whitespace",
      },
      remove_blankline_trail = false,
    },

    scope = { enabled = true, show_exact_scope = true },
  },

  config = function(_, opts)
    require('ibl').setup(opts)
  end
}
