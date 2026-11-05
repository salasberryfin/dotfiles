return {
	--- Standard colorschemes
	-- add nord
	{ "shaunsingh/nord.nvim" },
	-- add nordic
	{ "AlexvZyl/nordic.nvim" },
	-- add catppuccin
	{ "catppuccin/nvim" },
	-- add gruvbox
	{ "ellisonleao/gruvbox.nvim" },
	-- add gruvbox-material
	{
		"sainnhe/gruvbox-material",
		init = function()
			vim.g.gruvbox_material_background = "medium"
			vim.g.gruvbox_material_foreground = "material"
			vim.g.gruvbox_material_enable_italic = 1
			vim.g.gruvbox_material_better_performance = 1
		end,
	},
	-- add one-dark
	{ "joshdick/onedark.vim" },
	-- add kanagawa
	{ "rebelot/kanagawa.nvim" },
	-- add everforest
	{ "sainnhe/everforest" },
	-- add rose-pine
	{ "rose-pine/neovim" },
	-- add tokyonight
	{ "folke/tokyonight.nvim" },
	---
	-- Minimal colorscheme
	-- add atlas
	{ "huyvohcmc/atlas.vim" },
	-- add komau
	{ "ntk148v/komau.vim" },
	-- add rasmus
	{ "kvrohit/rasmus.nvim" },
	---

	-- Configure LazyVim to set default colorscheme
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "gruvbox-material",
		},
	},
}
