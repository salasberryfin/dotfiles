return {
	"williamboman/mason.nvim",
	opts = {
		ensure_installed = {
			"gopls",
			"delve",
		},
		ui = {
			icons = {
				package_installed = "✓",
				package_pending = "➜",
				package_uninstalled = "✗",
			},
		},
	},
}
