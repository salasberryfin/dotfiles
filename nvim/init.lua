vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set default shell to zsh
vim.opt.shell = "/usr/bin/zsh"

require("plugins")
require("remap")
require("set")

-- open telescope when neovim starts
-- need to fix this
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		vim.cmd("silent! lua require('telescope.builtin').find_files()")
	end,
})
