return {
	"saghen/blink.cmp",
	build = "cargo +nightly build --release",
	enabled = true,
	fuzzy = { implementation = "prefer_rust_with_warning" },
	opts = {
		keymap = {
			preset = "enter",
			["<CR>"] = { "fallback" }, -- Enter now only does a new line
		},
	},
}
