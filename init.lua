vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Bootstrap lazy.nvim (from the docs)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Import all plugin specs from lua/plugins/*
require("lazy").setup({
  { import = "plugins" },
})

pcall(require, "vim-settings")

-- Load your editor config modules
pcall(require, "config.keymaps")

vim.g.python3_host_prog = vim.fn.expand("~/.venvs/nvim/bin/python")
