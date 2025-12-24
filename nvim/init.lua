vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set default shell to zsh
vim.opt.shell = "/usr/bin/fish"

-- enable lsp for lua
vim.lsp.enable("luals")

-- enable lsp for go
vim.lsp.enable("gopls")

require("config.lazy")
require("config.keymaps")
require("config.options")
