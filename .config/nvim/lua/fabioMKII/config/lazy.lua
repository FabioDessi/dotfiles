vim.hl = vim.highlight

-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out,                            "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- fold options
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
vim.opt.foldcolumn = "0"
vim.opt.foldenable = false
vim.opt.foldtext = ""
vim.opt.foldnestmax = 4

vim.opt.nu = true
vim.opt.relativenumber = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undofile = true
vim.opt.undodir = os.getenv("HOME") .. "/.config/nvim/undodir"
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.scrolloff = 999
vim.opt.clipboard = "unnamedplus"

vim.keymap.set("i", "jj", "<ESC>", { silent = true })
vim.keymap.set("n", "<leader>bn", ":bnext<CR>", { silent = true })
vim.keymap.set("n", "<leader>bp", ":bprevious<CR>", { silent = true })

vim.api.nvim_create_autocmd("ColorScheme", {
  callback = function()
    -- TypeScript/JavaScript specific highlights
    vim.api.nvim_set_hl(0, "@lsp.type.variable.typescript", { link = "Variable" })
    vim.api.nvim_set_hl(0, "@lsp.type.variable.javascript", { link = "Variable" })
    vim.api.nvim_set_hl(0, "@lsp.type.parameter.typescript", { link = "Parameter" })
    vim.api.nvim_set_hl(0, "@lsp.type.parameter.javascript", { link = "Parameter" })
    vim.api.nvim_set_hl(0, "@lsp.type.property.typescript", { link = "Property" })
    vim.api.nvim_set_hl(0, "@lsp.type.property.javascript", { link = "Property" })
    vim.api.nvim_set_hl(0, "@lsp.type.interface.typescript", { link = "Type" })
    vim.api.nvim_set_hl(0, "@lsp.type.enum.typescript", { link = "Type" })
    vim.api.nvim_set_hl(0, "@lsp.type.type.typescript", { link = "Type" })
    vim.api.nvim_set_hl(0, "@lsp.type.class.typescript", { link = "Type" })
  end,
})

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- import your plugins
    { import = "fabioMKII.plugins" },
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  -- install = { colorscheme = { "habamax" } },
  -- automatically check for plugin updates
  change_detection = { notify = false },
  checker = { enabled = true },
})
