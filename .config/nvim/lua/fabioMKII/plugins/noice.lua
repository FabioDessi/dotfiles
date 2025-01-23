return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {},

  dependencies = {
    -- if you lazy-load any plugin below, make sure to add proper `module="..."` entries
    -- "MunifTanjim/nui.nvim",
    -- OPTIONAL:
    --   `nvim-notify` is only needed, if you want to use the notification view.
    --   If not available, we use `mini` as the fallback
    "rcarriga/nvim-notify",
  },

  config = function()
    require("notify").setup({
      background_colour = "#000000", -- or any color you prefer
      render = "wrapped-compact",
      stages = "fade",
    })

    require("noice").setup({
      -- FIX: Code actions window bocked
      lsp = {
        hover = {
          silent = true,
          enabled = true,
          view = nil,
          opts = {},
        },

        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
      },

      presets = {
        bottom_search = false,    -- use a classic bottom cmdline for search
        command_palette = false,  -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false,       -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true,    -- add a border to hover docs and signature help
      },
    })
  end,
}
