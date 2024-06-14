return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				mappings = {
					n = {
						["<leader>ff"] = actions.find_files,
						--["<C-p>"] = actions.git_files,
						["<leader>ps"] = actions.grep_string({ search = vim.fn.input("Grep > ") }),
					},
				},
			},
		})
	end,
}
