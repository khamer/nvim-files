local which_key = require("which-key")

which_key.add({
    { "<leader> ", "<cmd>nohlsearch<cr>", desc = "clear search", nowait = true, remap = false },
    { "<leader>1", "<cmd>bufdo bdelete<cr>", desc = "close all files", nowait = true, remap = false },
    { "<leader>a", "<cmd>lua MiniStarter.open()<cr>", desc = "Start", nowait = true, remap = false },
    { "<leader>R", "<cmd>UploadFolder<cr>", desc = "Rsync File", nowait = true, remap = false },
    { "<leader>e", "<cmd>NvimTreeToggle<cr>", desc = "neotree", nowait = true, remap = false },
    { "<leader>f", "<cmd>FzfLua files<cr>", desc = "Find files", nowait = true, remap = false },
    { "<leader>p", "<cmd>Projects<cr>", desc = "Projects", nowait = true, remap = false },
    { "<leader>q", "<cmd>lua vim.lsp.buf.format{async=true}<cr>", desc = "Format", nowait = true, remap = false },
    { "<leader>r", "<cmd>UploadFile<cr>", desc = "Rsync File", nowait = true, remap = false },
    { "<leader>/", "<cmd>FzfLua live_grep<cr>", desc = "Live grep", nowait = true, remap = false },
    { "<leader>w", "<cmd>w!<CR>", desc = "Save", nowait = true, remap = false },

    { "<leader>l", group = "LSP", nowait = true, remap = false },
    { "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", desc = "Code Action", nowait = true, remap = false },
    { "<leader>ld", "<cmd>FzfLua diagnostics_document<cr>", desc = "Document Diagnostics", nowait = true, remap = false },
    { "<leader>li", "<cmd>LspInfo<cr>", desc = "Info", nowait = true, remap = false },
    { "<leader>lj", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", desc = "Next Diagnostic", nowait = true, remap = false },
    { "<leader>lk", "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", desc = "Prev Diagnostic", nowait = true, remap = false },
    { "<leader>ll", "<cmd>lua vim.lsp.codelens.run()<cr>", desc = "CodeLens Action", nowait = true, remap = false },
    { "<leader>lq", "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", desc = "Quickfix", nowait = true, remap = false },
    { "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", desc = "Rename", nowait = true, remap = false },
    { "<leader>lw", "<cmd>FzfLua diagnotics_workspace<cr>", desc = "Workspace Diagnostics", nowait = true, remap = false },

    { "<leader>s", group = "Search", nowait = true, remap = false },
    { "<leader>sC", "<cmd>FzfLua commands<cr>", desc = "Commands", nowait = true, remap = false },
    { "<leader>sM", "<cmd>FzfLua manpages<cr>", desc = "Man Pages", nowait = true, remap = false },
    { "<leader>sR", "<cmd>FzfLua registers<cr>", desc = "Registers", nowait = true, remap = false },
    { "<leader>sb", "<cmd>FzfLua git_branches<cr>", desc = "Checkout branch", nowait = true, remap = false },
    { "<leader>sc", "<cmd>FzfLua colorscheme<cr>", desc = "Colorscheme", nowait = true, remap = false },
    { "<leader>sh", "<cmd>FzfLua helptags<cr>", desc = "Find Help", nowait = true, remap = false },
    { "<leader>sk", "<cmd>FzfLua keymaps<cr>", desc = "Keymaps", nowait = true, remap = false },
    { "<leader>sr", "<cmd>FzfLua oldfiles<cr>", desc = "Open Recent File", nowait = true, remap = false },
}, {
    mode = "n",
    prefix = "<leader>",
    silent = true,
    noremap = true,
    nowait = true,
})

which_key.add({
    { "<leader>j", "<Esc><cmd>'<,'>!python -m json.tool<CR>", desc = "Format JSON", mode = "v", nowait = true, remap = false },
}, {
    mode = "v",
    prefix = "<leader>",
    silent = true,
    noremap = true,
    nowait = true,
})
