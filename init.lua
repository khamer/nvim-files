-- lazy.nvim (https://github.com/folke/lazy.nvim)
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Lazy says this needs to be set before Lazy is loaded.
vim.g.mapleader = ' '
vim.g.maplocalleader = "\\"

require("lazy").setup("plugins")

require("user.options")
require("user.keymap")
require("user.upload")