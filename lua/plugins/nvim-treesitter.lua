return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function ()
        local configs = require("nvim-treesitter.configs")

        configs.setup({
            ensure_installed = { "html", "json", "php", "scss", "sql", "twig", "typescript", "vue" },
            auto_install = true,

            highlight = {
                enable = true,
            },

            indent = {
                enable = true,
            },
        })
    end,
}
