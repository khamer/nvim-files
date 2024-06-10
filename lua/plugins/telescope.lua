return {
	"nvim-telescope/telescope.nvim",
	--tag = "0.1.5",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-fzf-native.nvim",
	},
	config = function()
		local telescope = require("telescope")

		telescope.setup({
            defaults = {
                preview = {
                    filesize_limit = 1,
                    timeout = 250,
                },
            },
            pickers = {
                colorscheme = {
                    enable_preview = true
                }
            },
			project = {
				base_dirs = { "~/Code" },
			},
			extensions = {
				fzf = {
					fuzzy = true,
					case_mode = "smart_case",
				},
			},
		})

		telescope.load_extension("fzf")
	end,
}
