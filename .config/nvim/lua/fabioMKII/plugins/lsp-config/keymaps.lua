local M = {}

function M.set_lsp_keybindings(bufnr)
  local opts = { buffer = bufnr }
  vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, opts)
  vim.keymap.set("n", "<leader>K", vim.lsp.buf.hover, opts)
  vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
  vim.keymap.set("n", "<leader>gt", vim.lsp.buf.type_definition, opts)
  vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, opts)
  vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", opts)
  vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, opts)
  vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, opts)
  vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
  vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
end

return M
