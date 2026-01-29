-- local lspconfig = require("lspconfig")
-- local lspconfig = vim.lsp.config
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local keymaps = require("fabioMKII.plugins.lsp-config.keymaps")

-- lspconfig.astro.setup({
vim.lsp.config("astro", {
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
vim.lsp.enable("astro")
