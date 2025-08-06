return {
  {
    "stevearc/conform.nvim",
    event = { "BufReadPre", "BufNewFile" },

    config = function()
      local conform = require("conform")

      conform.setup({
        formatters = {
          prettierd = {
            require_cwd = true,
          },
        },

        formatters_by_ft = {
          -- javascript = { "prettierd" },
          -- javascriptreact = { "prettierd" },
          -- typescript = { "prettierd" },
          -- typescriptreact = { "prettierd" },
          -- html = { "prettierd" },
          -- css = { "prettierd" },
          -- json = { "prettierd" },
          lua = { "stylua" },
          bash = { "shfmt" },
          zsh = { "shfmt" },
          sh = { "shfmt" },
        },

        format_on_save = {
          lsp_fallback = true,
          async = false,
          timeout = 1500,
        },
      })
    end,
  },
}
