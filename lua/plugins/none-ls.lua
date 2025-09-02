-- ~/.config/nvim/lua/plugins/none-ls.lua
return {
  "nvimtools/none-ls.nvim",   -- repo (the renamed null-ls)
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- Formatters
        null_ls.builtins.formatting.prettier,     -- JS/TS/JSON/HTML/CSS
        null_ls.builtins.formatting.stylua,       -- Lua
        -- Linters
        null_ls.builtins.diagnostics.erb_lint,
        --null_ls.builtins.formatting.rubocop,
        null_ls.builtins.formatting.clang_format,
        --null_ls.builtins.diagnostics.clang_tidy,   -- or clang_tidy
        null_ls.builtins.diagnostics.cppcheck,      -- optional      
        -- JS/TS
        -- Code actions
        null_ls.builtins.code_actions.gitsigns,   -- git hunks

      },
    })
  end,
}

