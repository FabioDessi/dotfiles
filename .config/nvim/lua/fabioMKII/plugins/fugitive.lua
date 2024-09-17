return {
  "tpope/vim-fugitive",
  config = function()
    vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
    vim.keymap.set("n", "<leader>dgj", "<cmd>diffget //2<CR>")
    vim.keymap.set("n", "<leader>dgk", "<cmd>diffget //3<CR>")
    vim.keymap.set("n", "<leader>dg", "<cmd>diffput<CR>")
  end
}
