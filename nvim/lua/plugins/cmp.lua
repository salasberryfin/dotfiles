return {
	"hrsh7th/cmp-nvim-lsp",
}
-- local cmp_autopairs = require('nvim-autopairs.completion.cmp')
-- local cmp = require('cmp')
--
-- cmp.event:on(
--     'confirm_done',
--     cmp_autopairs.on_confirm_done()
-- )
--
-- local cmp = require('cmp')
-- local cmp_select = {behavior = cmp.SelectBehavior.Select}
-- local cmp_mappings = lsp.defaults.cmp_mappings({
-- 	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
-- 	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
-- 	['<C-y>'] = cmp.mapping.confirm(cmp_select),
-- 	['<C-Space>'] = cmp.mapping.complete(),
-- })
--
-- lsp.setup_nvim_cmp({
-- 	mapping = cmp_mappings
-- })
--
