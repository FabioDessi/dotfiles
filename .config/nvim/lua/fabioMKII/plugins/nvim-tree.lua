return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
      view = {
        width = 30,
      },
    })

    vim.keymap.set("n", "<leader>n", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
  end,
}