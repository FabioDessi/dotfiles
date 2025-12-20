local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local keymaps = require("fabioMKII.plugins.lsp-config.keymaps")

lspconfig.svelte.setup({
  capabilities = cmp_nvim_lsp.default_capabilities(),
  on_attach = function(_, bufnr)
    keymaps.set_lsp_keybindings(bufnr)
  end,
  filetypes = { "svelte" },
})
