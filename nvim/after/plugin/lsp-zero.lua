local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
	'bashls',
    'clangd',
	'dockerls',
	'gopls',
	'pyright',
	'rust_analyzer',
	'lua_ls',
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm(cmp_select),
	['<C-Space>'] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

vim.diagnostic.config({
	virtual_text = true,
	signs = true,
    float = false,
	update_in_insert = true,
	underline = false,
	severity_sort = false,
})
vim.o.updatetime = 250
-- vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]

lsp.nvim_workspace()
lsp.setup()
