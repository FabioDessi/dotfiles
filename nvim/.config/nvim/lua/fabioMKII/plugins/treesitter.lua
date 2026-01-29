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
        "json",
      },
      indent = {
        enable = true,
      },
      autotag = { enable = true },
      context_commentstring = { enable = true },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "gnn",
          node_incremental = "grn",
          scope_incremental = "grc",
          node_decremental = "grm",
        },
      },
      sync_install = false,
      auto_install = false,
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },

      ignore_install = {},

      modules = {},
    })
  end,
}
