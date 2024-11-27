-- Using lazy.nvim as our plugin manager.
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

-- Nvim-tree wants this set before the plugin is loaded.
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Load Lazy
require("lazy").setup("plugins")

-- Options contains neovim's settings.
require("user.options")

-- Keymap contains our keybindings.
require("user.keymap")

-- Upload is my own rsync-based Upload command for remote dev.
require("user.upload")

-- Which-key bindings.
require("user.which-key")
