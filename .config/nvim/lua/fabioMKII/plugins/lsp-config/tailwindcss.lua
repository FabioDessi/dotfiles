local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local keymaps = require("fabioMKII.plugins.lsp-config.keymaps")

lspconfig.tailwindcss.setup({
  on_attach = function(_, bufnr)
    keymaps.set_lsp_keybindings(bufnr)
  end,

  capabilities = cmp_nvim_lsp.default_capabilities(),

  settings = {
    tailwindCSS = {
      experimental = {
        configFile = "src/styles/global.css", -- Point to CSS file
      },
    },
  },
})
