return {
  {
    "stevearc/conform.nvim",
    config = function()
      local conform = require("conform")

      conform.setup({
        formatters_by_ft = {
          javascript = { "prettierd", "eslint_d" },
          javascriptreact = { "prettierd", "eslint_d" },
          typescript = { "prettierd", "eslint_d" },
          typescriptreact = { "prettierd", "eslint_d" },
          html = { "prettierd" },
          css = { "prettierd" },
          json = { "prettierd" },
          bash = { 'shfmt', 'shellcheck' },
          zsh = { 'shfmt', 'shellcheck' },
          sh = { 'shfmt', 'shellcheck' },
        },
      })

      local augroup = vim.api.nvim_create_augroup("FormatOnSave", { clear = true })

      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.html", "*.css", "*.json", "*.bash", "*.zsh", "*.sh" },
        group = augroup,

        callback = function(args)
          conform.format({ bufnr = args.buf, timeout_ms = 5000 })
        end,
      })
    end,
  },
}
