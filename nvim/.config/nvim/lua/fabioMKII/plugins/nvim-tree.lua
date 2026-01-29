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
        width = {
          min = 30,
          max = 100,
          padding = 1,
        },
      },
      filters = {
        git_ignored = false,
      },
    })

    vim.keymap.set("n", "<leader>n", ":NvimTreeFindFile<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>N", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>nf", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
    vim.keymap.set("n", "<leader>nc", ":NvimTreeCollapse<CR>", { noremap = true, silent = true })
  end,
}
