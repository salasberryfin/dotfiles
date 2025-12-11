return {
	"VonHeikemen/lsp-zero.nvim",
	dependencies = {
		-- LSP Support
		{ "neovim/nvim-lspconfig" },
		{ "mason-org/mason.nvim" },
		{ "mason-org/mason-lspconfig.nvim" },
		-- Autocompletion
		{ "hrsh7th/nvim-cmp" },
		{ "hrsh7th/cmp-buffer" },
		{ "hrsh7th/cmp-path" },
		{ "saadparwaiz1/cmp_luasnip" },
		{ "hrsh7th/cmp-nvim-lsp" },
		{ "hrsh7th/cmp-nvim-lua" },
		-- Snippets
		{ "L3MON4D3/LuaSnip" },
		{ "rafamadriz/friendly-snippets" },
	},
	opts = {
		ensure_installed = {
			"bashls",
			"clangd",
			"dockerls",
			"gopls",
			"pyright",
			"rust_analyzer",
			"lua_ls",
		},
		preset = "recommended",
	},
}

-- vim.diagnostic.config({
-- 	virtual_text = true,
-- 	signs = true,
--     float = false,
-- 	update_in_insert = true,
-- 	underline = false,
-- 	severity_sort = false,
-- })
-- vim.o.updatetime = 250
-- -- vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
--
-- lsp.nvim_workspace()
-- lsp.setup()
