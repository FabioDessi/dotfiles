local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local keymaps = require("fabioMKII.plugins.lsp-config.keymaps")

lspconfig.astro.setup({
  capabilities = cmp_nvim_lsp.default_capabilities(),
  filetypes = { "astro" },

  on_attach = function(_, bufnr)
    keymaps.set_lsp_keybindings(bufnr)

    vim.api.nvim_create_autocmd("BufWritePre", {
      buffer = bufnr,
      callback = function()
        vim.lsp.buf.format()
      end,
    })
  end,
})
