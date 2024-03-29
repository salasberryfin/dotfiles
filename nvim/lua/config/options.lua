-- relative line numbers
vim.opt.nu = true
vim.opt.rnu = true

-- indentation
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- line wrap
vim.opt.wrap = false

-- do not share clipboard with system
vim.opt.clipboard = ""

-- remove swap file
vim.opt.swapfile = false

-- use undotree instead
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- tweak search parameters to make it look better
vim.opt.hlsearch = false
vim.opt.incsearch = true
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- miscellanea
vim.opt.scrolloff = 8 -- change scrolling behavior8
vim.opt.signcolumn = "yes"
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80" -- draw column at pos 80
vim.opt.splitright = true

-- set termguicolors
vim.opt.termguicolors = true

-- rust
vim.g.rustfmt_autosave = 1

-- terraform
vim.g.terraform_fmt_on_save = 1

-- lsp-zero
vim.g.lsp_zero_extend_lspconfig = 0
