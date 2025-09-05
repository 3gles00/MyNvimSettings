return{
  {
    "williamboman/mason.nvim",
      config = function()
        require("mason").setup()
    end
  },
  {
    "williamboman/mason-lspconfig.nvim",
      config= function()
        require("mason-lspconfig").setup({
          ensure_installed = {
            "lua_ls",
            "ts_ls",
            "clangd",
            "cmake",
--            "asm_lsp",
            "html",
            "cssls",
            "jdtls",
            "jsonls",
            "ltex",
            "pyright",
            "lemminx",
            "yamlls",
            "vimls",
          }
      })
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({})
      lspconfig.ts_ls.setup({})
      lspconfig.clangd.setup({})
      lspconfig.cmake.setup({})
      lspconfig.asm_lsp.setup({})
      lspconfig.html.setup({})
      lspconfig.cssls.setup({})
      lspconfig.jdtls.setup({})
      lspconfig.jsonls.setup({})
      lspconfig.ltex.setup({})
      lspconfig.pyright.setup({})
      lspconfig.lemminx.setup({})
      lspconfig.yamlls.setup({})
      lspconfig.vimls.setup({})
      vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
      vim.keymap.set('n', 'gd', vim.lsp.buf.definition, {})
      vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})

    end
  }

}
