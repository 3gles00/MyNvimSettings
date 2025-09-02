-- ~/.config/nvim/lua/plugins/treesitter.lua
return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate", -- updates parsers on install/update
  event = { "BufReadPost", "BufNewFile" }, -- lazy-load on file open
  config = function()
    require("nvim-treesitter.configs").setup({
      -- install the languages you care about
      sync_install = false,   -- install parsers asynchronously
      auto_install = true,    -- auto-install missing parsers when entering buffer
      highlight = {
        auto_install = true,
        enable = true,        -- enable treesitter highlighting
        additional_vim_regex_highlighting = false, -- turn off regex highlighting
      },
      indent = { enable = true }, -- better indentation
    })
  end,
}

