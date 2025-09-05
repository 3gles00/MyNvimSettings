-- ~/.config/nvim/lua/plugins/neo-tree.lua
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- optional, for file icons
    "MunifTanjim/nui.nvim",
  },
  cmd = "Neotree",
  keys = {
    { "<leader>e", "<cmd>Neotree toggle right<CR>", desc = "Toggle Neo-tree (right)" },
    { "<leader>o", "<cmd>Neotree focus<CR>",  desc = "Focus Neo-tree"  },
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true, -- auto close if it's the last window
      filesystem = {
        follow_current_file = { enabled = true }, -- focus file in tree when opened
        filtered_items = {
          hide_dotfiles = false,
          hide_gitignored = true,
        },
      },
      window = {
        width = 30,
        mappings = {
          ["<space>"] = "none", -- disable space as a mapping (so it works as leader)
        },
      },
    })
  end,
}

