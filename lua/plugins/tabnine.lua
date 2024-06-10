return {
    'codota/tabnine-nvim',
    build = "./dl_binaries.sh",
    config = function()
        require("tabnine").setup({
            disable_auto_comment = true,
            accept_keymap = "<S-Tab>",
            dismiss_keymap = "<C-]>",
            debounce_ms = 800,
            suggestion_color = {gui = "#a080c0", cterm = 244},
            exclude_filetypes = {"TelescopePrompt", "NvimTree"},
            log_file_path = nil, -- absolute path to Tabnine log file
        })
    end,
}
