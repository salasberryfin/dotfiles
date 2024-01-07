vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set default shell to zsh
vim.opt.shell = "/usr/bin/zsh"

require("config.lazy")
require("config.keymaps")
require("config.options")
