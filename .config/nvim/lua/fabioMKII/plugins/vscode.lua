return {
  "Mofiqul/vscode.nvim",
  priority = 1000,

  config = function()
    local colors = require("vscode.colors").get_colors()

    require("vscode").setup({
      italic_comments = true,
      underline_links = true,
      disable_nvimtree_bg = true,

      group_overrides = {
        Cursor = { fg = colors.vscDarkBlue, bg = colors.vscLightGreen, bold = true },
      },
    })

    vim.cmd.colorscheme("vscode")
  end,
}
