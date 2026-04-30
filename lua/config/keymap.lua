local keymap = vim.keymap.set

---- NORMAL MODE ----

-- Better window navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Navigate buffers
keymap("n", "<C-pageup>", ":bnext<CR>", opts)
keymap("n", "<C-pagedown>", ":bprevious<CR>", opts)

---- VISUAL MODE ----

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)
