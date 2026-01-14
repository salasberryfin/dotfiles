-- Explicitly disable stuff I don't like
return {
	-- Disable plugins
	{ "folke/flash.nvim", enabled = false },
	{ "hrsh7th/nvim-cmp", enabled = false },

	-- Disable inlay_hints
	{
		"neovim/nvim-lspconfig",
		opts = {
			inlay_hints = { enabled = false },
		},
	},
}
