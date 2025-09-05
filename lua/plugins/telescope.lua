-- ~/.config/nvim/lua/plugins/telescope.lua
return {
  "nvim-telescope/telescope.nvim",
  tag = "0.1.5", -- optional, pin a version; remove to always get latest
  dependencies = {
    "nvim-lua/plenary.nvim",             -- required
    "nvim-telescope/telescope-ui-select.nvim", -- optional: UI for vim.ui.select
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")
    local themes = require("telescope.themes")

    telescope.setup({
      defaults = {
        prompt_prefix = "🔍 ",
        selection_caret = " ",
        path_display = { "smart" },
      },
      pickers = {
        find_files = { theme = "dropdown" },
      },
      extensions = {
        ["ui-select"] = themes.get_dropdown({}), -- style of vim.ui.select popups
      },
    })

    -- load optional extensions
    telescope.load_extension("ui-select")
  end,
}

