vim.cmd[[colorscheme ayu]]

vim.opt.backup = true
vim.opt.backupdir:remove(".")
vim.opt.expandtab = true
vim.opt.ignorecase = true
vim.opt.laststatus = 3
vim.opt.linebreak = true
vim.opt.mouse = "a"
vim.opt.number = true
vim.opt.shiftwidth = 4
vim.opt.smartcase = true
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.undofile = true
vim.opt.whichwrap:append("<,>,[,],h,l")

vim.cmd('hi WinSeparator guifg=#828bb8')
