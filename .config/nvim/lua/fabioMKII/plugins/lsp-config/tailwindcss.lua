local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local keymaps = require("fabioMKII.plugins.lsp-config.keymaps")

lspconfig.tailwindcss.setup({
  on_attach = function(_, bufnr)
    keymaps.set_lsp_keybindings(bufnr)
  end,

  capabilities = cmp_nvim_lsp.default_capabilities(),
  root_dir = function(fname)
    local root_pattern = lspconfig.util.root_pattern(
      "tailwind.config.cjs",
      "tailwind.config.mjs",
      "tailwind.config.js",
      "postcss.config.js"
    )
    return root_pattern(fname)
  end,
})
