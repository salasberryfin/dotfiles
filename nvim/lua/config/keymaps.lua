-- SPACE is leader
vim.g.mapleader = " "

-- jj as ESC
vim.keymap.set("i", "jj", "<ESC>")
-- jj & ESC to get out of terminal insert mode
vim.keymap.set("t", "<ESC>", "<C-\\><C-n>")
vim.keymap.set("t", "jj", "<C-\\><C-n>")

-- split navigation
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-h>", "<C-w>h")

-- terminal
-- vim.keymap.set("n", "<leader>t", vim.cmd.terminal)  -- terminal in new buffer
vim.keymap.set("n", "<leader>vt", ":vs term://zsh<CR>") -- vert split terminal

-- move visual blocks of code
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- maintain cursor in useful position
vim.keymap.set("n", "J", "mzJ`z") -- do not move cursor to end of line when J
vim.keymap.set("n", "<C-d>", "<C-d>zz") -- keep cursor in the middle
vim.keymap.set("n", "<C-u>", "<C-u>zz") -- keep cursor in the middle
vim.keymap.set("n", "n", "nzzzv") -- center matched item in search
vim.keymap.set("n", "N", "Nzzzv") -- center matched item in search

-- copy to system clipboard
vim.keymap.set("n", "<leader>y", '"+yy')
vim.keymap.set("v", "<leader>y", '"+y')

-- paste from system clipboard
vim.keymap.set("n", "<C-p>", '"+pa<ESC>')

-- nvim-tree
vim.keymap.set("n", "<C-n>", vim.cmd.Neotree)

-- vim-fugitive
vim.keymap.set("n", "<leader>gs", vim.cmd.Git)
vim.keymap.set("n", "<leader>gl", vim.cmd.Gllog)
vim.keymap.set("n", "<leader>gd", vim.cmd.Gvdiffsplit)
vim.keymap.set("n", "<leader>ga", vim.cmd.Gwrite)

-- go ide
vim.keymap.set("n", "<leader>ss", vim.cmd.GoFillStruct)

-- copilot
vim.g.copilot_no_tab_map = true
