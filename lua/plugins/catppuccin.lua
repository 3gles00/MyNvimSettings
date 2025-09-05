-- ~/.config/nvim/lua/plugins/catppuccin.lua
return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000, -- make sure it loads before other UI plugins
  config = function()
    require("catppuccin").setup({
      flavour = "mocha",              -- latte, frappe, macchiato, mocha
      background = { light = "latte", dark = "mocha" },
      transparent_background = false, -- set true if you want terminal background to show
      float = { transparent = false, solid = false },
      show_end_of_buffer = false,
      term_colors = false,
      dim_inactive = { enabled = false, shade = "dark", percentage = 0.15 },

      -- EITHER let Catppuccin auto-detect plugins (nice with lazy.nvim)…
      -- auto_integrations = true,

      -- …OR be explicit about integrations you care about:
      integrations = {
        cmp = true,
        gitsigns = true,
        treesitter = true,
        telescope = { enabled = true },
        nvimtree = true,
        native_lsp = {
          enabled = true,
          virtual_text = { errors = { "italic" }, hints = { "italic" }, warnings = { "italic" }, information = { "italic" }, ok = { "italic" } },
          underlines = { errors = { "underline" }, hints = { "underline" }, warnings = { "underline" }, information = { "underline" }, ok = { "underline" } },
          inlay_hints = { background = true },
        },
      },
    })

    -- apply the colorscheme last
    vim.cmd.colorscheme("catppuccin")
    -- Alternatively, you can target a flavour directly:
    -- vim.cmd.colorscheme("catppuccin-mocha")
  end,
}

