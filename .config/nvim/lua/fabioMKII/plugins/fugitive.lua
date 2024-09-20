return {
  "tpope/vim-fugitive",
  config = function()
    vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
    vim.keymap.set("n", "<leader>dgh", "<cmd>diffget //2<CR>")
    vim.keymap.set("n", "<leader>dgl", "<cmd>diffget //3<CR>")
    vim.keymap.set("n", "<leader>dg", "<cmd>diffput<CR>")
  end
}
