return {
  'lukas-reineke/indent-blankline.nvim',
  main = "ibl",

  config = function()
    local hooks = require("ibl.hooks")
    local highlight = {
      "Whitespace",
      "CursorColumn",
    }

    vim.opt.list = true
    hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_space_indent_level)
    hooks.register(hooks.type.WHITESPACE, hooks.builtin.hide_first_tab_indent_level)


    require("ibl").setup({
      indent = {
        char = "▏",
      },

      whitespace = {
        highlight = highlight,
        remove_blankline_trail = true,
      },

      scope = {
        enabled = true,
        show_exact_scope = true,
        show_start = false,
        show_end = false
      },
    })
  end
}
