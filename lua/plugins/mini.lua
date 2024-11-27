return {
    "echasnovski/mini.nvim",
    version = false,
    config = function()
        require("mini.ai").setup()
        require("mini.comment").setup()
        require("mini.starter").setup {
            header = table.concat({
                [[ ▄ .▄ ▄▄▄· • ▌ ▄ ·. ▄▄▄ .▄▄▄]],
                [[██▪▐█▐█ ▀█ ·██ ▐███▪▀▄.▀·▀▄ █·]],
                [[██▀▐█▄█▀▀█ ▐█ ▌▐▌▐█·▐▀▀▪▄▐▀▀▄]],
                [[██▌▐▀▐█ ▪▐▌██ ██▌▐█▌▐█▄▄▌▐█•█▌]],
                [[▀▀▀ · ▀  ▀ ▀▀  █▪▀▀▀ ▀▀▀ .▀  ▀]],
            }, "\n")

        }

        require("mini.statusline").setup()
    end,
}
