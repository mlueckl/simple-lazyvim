return {
	{
		"williamboman/mason.nvim",
		"williamboman/mason-lspconfig.nvim",
		"neovim/nvim-lspconfig",
		ensure_installed = {
			"stylua",
			"shellcheck",
			"gopls",
			"flake8",
			"rust_analyzer",
		},
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local mason = require("mason")

			mason.setup()
		end,
	},
}
