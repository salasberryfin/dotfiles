return {
	"akinsho/toggleterm.nvim",
	cmd = { "ToggleTerm" },
	build = ":ToggleTerm",
	keys = {
		{ "<Leader>ww", ":ToggleTerm<cr>" },
	},
	--opts = {
	--	size = 60,
	--	open_mapping = [[<C-\>]],
	--	shade_filetypes = {},
	--	direction = "float",
	--	shade_terminals = true,
	--	shading_factor = 2,
	--	float_opts = {
	--		border = "curved",
	--		winblend = 0,
	--		highlights = {
	--			border = "Normal",
	--			background = "Normal",
	--		},
	--	},
	--},
}
