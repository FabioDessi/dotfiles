return {
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = { "neovim/nvim-lspconfig" },
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "tailwindcss",
          "astro",
          "html",
          "cssls",
          "cssmodules_ls",
          "eslint",
          -- "svelte",
          -- "gopls",
        },
      })

      require("mason-lspconfig").setup_handlers({
        function(server_name)
          require("lspconfig")[server_name].setup({
            on_attach = function(_, bufnr)
              require("fabioMKII.plugins.lsp-config.keymaps").set_lsp_keybindings(bufnr)
            end,

            settings = {},
            capabilities = require('cmp_nvim_lsp').default_capabilities(),
          })
        end,

        ["lua_ls"] = function(server_name)
          require("fabioMKII.plugins.lsp-config." .. server_name)
        end,

        ["ts_ls"] = function(server_name)
          require("fabioMKII.plugins.lsp-config." .. server_name)
        end,

        ["tailwindcss"] = function(server_name)
          require("fabioMKII.plugins.lsp-config." .. server_name)
        end,

        ["astro"] = function(server_name)
          require("fabioMKII.plugins.lsp-config." .. server_name)
        end,
      })
    end,
  },
}
