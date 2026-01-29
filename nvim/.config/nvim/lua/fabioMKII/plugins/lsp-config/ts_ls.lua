-- local lspconfig = require("lspconfig")
-- local lspconfig = vim.lsp.config
local cmp_nvim_lsp = require("cmp_nvim_lsp")
local keymaps = require("fabioMKII.plugins.lsp-config.keymaps")

-- lspconfig.ts_ls.setup({
vim.lsp.config("ts_ls", {
	on_attach = function(client, bufnr)
		keymaps.set_lsp_keybindings(bufnr)

		-- Enable inlay hints (corrected syntax)
		pcall(function()
			if client.server_capabilities.inlayHintProvider then
				vim.lsp.buf.inlay_hint(bufnr, true)
			end
		end)

		-- Enable semantic tokens
		client.server_capabilities.semanticTokensProvider = {
			full = true,
			legend = {
				tokenTypes = {
					"namespace",
					"type",
					"class",
					"enum",
					"interface",
					"struct",
					"typeParameter",
					"parameter",
					"variable",
					"property",
					"enumMember",
					"event",
					"function",
					"method",
					"decorator",
					"macro",
					"label",
					"comment",
					"string",
					"keyword",
					"number",
					"regexp",
					"operator",
				},
				tokenModifiers = {
					"declaration",
					"definition",
					"readonly",
					"static",
					"deprecated",
					"abstract",
					"async",
					"modification",
					"documentation",
					"defaultLibrary",
				},
			},
			range = true,
		}
	end,

	capabilities = cmp_nvim_lsp.default_capabilities(),
	settings = {
		typescript = {
			inlayHints = {
				includeInlayParameterNameHints = "all",
				includeInlayParameterNameHintsWhenArgumentMatchesName = false,
				includeInlayFunctionParameterTypeHints = true,
				includeInlayVariableTypeHints = true,
				includeInlayPropertyDeclarationTypeHints = true,
				includeInlayFunctionLikeReturnTypeHints = true,
				includeInlayEnumMemberValueHints = true,
			},
			format = {
				indentSize = 2,
				convertTabsToSpaces = true,
				tabSize = 2,
			},
		},
		javascript = {
			inlayHints = {
				includeInlayParameterNameHints = "all",
				includeInlayParameterNameHintsWhenArgumentMatchesName = false,
				includeInlayFunctionParameterTypeHints = true,
				includeInlayVariableTypeHints = true,
				includeInlayPropertyDeclarationTypeHints = true,
				includeInlayFunctionLikeReturnTypeHints = true,
				includeInlayEnumMemberValueHints = true,
			},
			format = {
				indentSize = 2,
				convertTabsToSpaces = true,
				tabSize = 2,
			},
		},
		completions = {
			completeFunctionCalls = true,
		},
	},
})
vim.lsp.enable("ts_ls")
