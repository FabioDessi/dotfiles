return {
  "lewis6991/gitsigns.nvim",

  config = function()
    require("gitsigns").setup()

    vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", {})
    vim.keymap.set("n", "<leader>gb", "<cmd>Gitsigns blame_line<CR>", {})
  end,
}
