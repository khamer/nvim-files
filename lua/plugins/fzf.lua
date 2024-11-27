return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    -- calling `setup` is optional for customization
    local fzf_lua = require("fzf-lua")
    local actions = require "fzf-lua.actions"

    fzf_lua.setup {
        fzf_opts = {
            ["--layout"] = "default",
        },
        winopts = {
            width = 1,
            height = 1,
            preview = {
                layout       = "up",
            },
        },
        files = {
            formatter = "path.filename_first"
        },
        grep = {
            formatter = "path.filename_first",
        },
    }

    _G.fzf_dirs = function()
        local opts = {
            prompt = "Code/",
            actions = {
                ['default'] = function(selected)
                    vim.cmd("cd $HOME/Code/" .. selected[1])
                    vim.notify(vim.fn.getcwd())
                    -- vim.cmd("NvimTreeFocus")
                end
            },
        }

        fzf_lua.fzf_exec("find ~/Code -maxdepth 1 -not -path ~/Code -type d -printf '%f\n'", opts)
    end

    vim.cmd([[command! -nargs=* Projects lua _G.fzf_dirs()]])
  end
}
