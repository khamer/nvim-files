local wk = require("which-key")

wk.add({
  mode = "n",
  silent = true,
  noremap = true,
  nowait = true,
  { "<leader>f", "<cmd>lua Snacks.picker('files')<cr>", desc = "open file" },
  { "<leader>g", "<cmd>lua Snacks.lazygit()<cr>", desc = "lazygit" },
  { "<leader>G", "<cmd>lua Snacks.gitbrowse.open()<cr>", desc = "open repo" },
  { "<leader>z", "<cmd>lua Snacks.zen()<cr>", desc = "zen mode" },
  { "<leader>1", "<cmd>bufdo bdelete<cr>", desc = "close all files" },
  { "<leader> ", "<cmd>nohlsearch<cr>", desc = "clear search" },
  { "<leader>e", "<cmd>lua Snacks.explorer()<cr>", desc = "files sidebar" },
  { "<leader>t", "<cmd>lua Snacks.terminal()<cr>", desc = "terminal" },
  { "<leader>d", "<cmd>lua Snacks.words.jump()<cr>", desc = "jump" },
})

wk.add({
  { "<leader>j", "<Esc><cmd>'<,'>!python -m json.tool<CR>", desc = "Format JSON", mode = "v", nowait = true, remap = false },
}, {
  mode = "v",
  silent = true,
  noremap = true,
  nowait = true,
})
