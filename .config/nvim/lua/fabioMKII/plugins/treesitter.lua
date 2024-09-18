return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = {
        "bash",
        "lua",
        "luadoc",
        "vim",
        "vimdoc",
        "markdown",
        "astro",
        "javascript",
        "typescript",
        "css",
        "html",
        "tsx",
        "svelte",
        "go",
        "jsdoc",
        "regex",
        "markdown_inline",
      },

      indent = {
        enable = true
      },

      sync_install = false,
      auto_install = false,

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      ignore_install = {},
    })
  end
}
