return {
	--- Standard colorschemes
	-- add nord
	{ "shaunsingh/nord.nvim" },
	-- add nordic
	{ "AlexvZyl/nordic.nvim" },
	-- add catppuccin
	{ "catppuccin/nvim" },
	-- add gruvbox-material
	{ "sainnhe/gruvbox-material" },
	-- add one-dark
	{ "joshdick/onedark.vim" },
	-- add kanagawa
	{ "rebelot/kanagawa.nvim" },
	-- add dracula
	{ "Mofiqul/dracula.nvim" },
	---
	-- Minimal colorscheme
	-- add atlas
	{ "huyvohcmc/atlas.vim" },
	-- add komau
	{ "ntk148v/komau.vim" },
	-- add rasmus
	{ "kvrohit/rasmus.nvim" },
	---

	-- Configure LazyVim to load catppuccin
	{
		"LazyVim/LazyVim",
		opts = {
			colorscheme = "nordic",
		},
	},
}
