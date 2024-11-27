return {
    "zbirenbaum/copilot.lua",
    config = function()
        require("copilot").setup({
            suggestion = { enabled = false },
            panel = { enabled = false },
            copilot_node_command = '/home/kevin/.cache/n/versions/node/22.11.0/bin/node',
        })
    end,
}
