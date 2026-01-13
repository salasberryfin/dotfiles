return {
	"saghen/blink.cmp",
	build = "cargo +nightly build --release",
	enabled = true,
	fuzzy = { implementation = "lua" },
	opts = {
		keymap = {
			preset = "enter",
			["<CR>"] = { "fallback" }, -- Enter now only does a new line
		},
	},
}
