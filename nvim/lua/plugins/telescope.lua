local builtin = require("telescope.builtin")

return {
	"nvim-telescope/telescope.nvim",
	dependencies = {
		"nvim-lua/popup.nvim",
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-media-files.nvim",
		"nvim-telescope/telescope-github.nvim",
		"nvim-telescope/telescope-symbols.nvim",
		"nvim-telescope/telescope-file-browser.nvim",
		"crispgm/telescope-heading.nvim",
		"fannheyward/telescope-coc.nvim",
	},
	keys = {
		{ "<Leader>ff", builtin.find_files, {} },
		{ "<Leader>fg", builtin.live_grep, {} },
		{ "<Leader><Leader>", builtin.buffers, {} },
		{ "<Leader>fb", ":Telescope file_browser<CR>", {} },
		{ "<Leader>gr", builtin.lsp_references, {} },
		{ "<Leader>gw", builtin.grep_string, {} },
	},
	config = function()
		local telescope = require("telescope")
		telescope.setup({
			defaults = {
				path_display = {
					filename_first = {
						reverse_directories = false,
					},
				},
				layout_strategy = "horizontal",
				layout_config = {
					horizontal = {
						mirror = false,
						prompt_position = "bottom",
						preview_width = 0.55,
					},
				},
			},
			initial_mode = "insert",
			select_strategy = "reset",
			sorting_strategy = "ascending",
			color_devicons = true,
			set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
			pickers = {
				find_files = {
					hidden = true,
					no_ignore = true,
				},
			},
			extensions = {
				file_browser = {
					theme = "ivy",
					-- disables netrw and use telescope-file-browser in its place
					hijack_netrw = true,
					mappings = {
						["i"] = {
							["jj"] = require("telescope.actions").close,
						},
						["n"] = {
							-- your custom normal mode mappings
						},
					},
				},
			},
		})
	end,
}

-- -- Load Telescope extensions
-- require("telescope").load_extension "file_browser"  -- file_browser
