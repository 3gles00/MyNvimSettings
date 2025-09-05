return {
  "nvim-telescope/telescope-ui-select.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    local telescope = require("telescope")
    local themes = require("telescope.themes")
    telescope.setup({
      extensions = {
        ["ui-select"] = themes.get_dropdown({}) -- you can pass opts here
      },
    })
    telescope.load_extension("ui-select")
  end,
}

