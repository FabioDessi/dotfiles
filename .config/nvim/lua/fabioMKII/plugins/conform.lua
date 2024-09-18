return {
  {
    "stevearc/conform.nvim",
    config = function()
      require("conform").setup({
        formatters_by_ft = {
          javascript = { "prettierd" },
          javascriptreact = { "prettierd" },
          typescript = { "prettierd" },
          typescriptreact = { "prettierd" },
          html = { "prettierd" },
          css = { "prettierd" },
          json = { "prettierd" },
        },
      })
      vim.api.nvim_create_autocmd("BufWritePre", {
        pattern = { "*.js", "*.ts", "*.jsx", "*.tsx", "*.html", "*.css", "*.json" },
        callback = function(args)
          require("conform").format({ bufnr = args.buf })
        end,
      })
    end,
  },
}
