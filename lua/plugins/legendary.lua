return {
    "mrjones2014/legendary.nvim",
    version = "^v2.1.0",
    priority = 10000,
    lazy = false,

    config = function()
        require("legendary").setup({
            extensions = {
                which_key = {
                    auto_register = true,
                },
            },
        })
    end,
}
