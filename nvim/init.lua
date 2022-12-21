vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- set default shell to zsh
vim.opt.shell = "/usr/bin/zsh"

require("plugins")
require("remap")
require("set")
