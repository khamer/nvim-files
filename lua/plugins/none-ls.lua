return {
    "nvimtools/none-ls.nvim",
    event = "InsertEnter",
    dependencies = {  "mason.nvim" },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                -- Code Actions
                null_ls.builtins.code_actions.eslint,
                null_ls.builtins.code_actions.refactoring,
                null_ls.builtins.code_actions.statix,

                -- Completions
                null_ls.builtins.completion.spell,
                null_ls.builtins.completion.tags,

                -- Diagnostics
                null_ls.builtins.diagnostics.eslint,
                null_ls.builtins.diagnostics.jsonlint,
                null_ls.builtins.diagnostics.php,
                null_ls.builtins.diagnostics.stylelint,
                null_ls.builtins.diagnostics.tsc,
                null_ls.builtins.diagnostics.twigcs,

                -- Formatting
                null_ls.builtins.formatting.eslint,
                null_ls.builtins.formatting.jq,
                null_ls.builtins.formatting.prettier,
                null_ls.builtins.formatting.standardjs,
                null_ls.builtins.formatting.stylua,
            },
        })
    end,
}
