-- Use Packer as package manager
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- rose-pine colorscheme
  use({
	  'rose-pine/neovim',
	  as = 'rose-pine',
	  config = function()
		  vim.cmd('colorscheme rose-pine')
	  end
  })

  -- gruvbox colorscheme
  use({ 'ellisonleao/gruvbox.nvim' })

  -- kanagawa colorscheme
  use({ 'rebelot/kanagawa.nvim' })

  -- Telescope
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.0',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Telescope plugin for :Telescope file_browser
  use { "nvim-telescope/telescope-file-browser.nvim" }

  -- treesitter for highlighting
  use(
	  'nvim-treesitter/nvim-treesitter',
	  {run = ':TSUpdate'}
  )

  -- nvim-web-devicons
  use { 'nvim-tree/nvim-web-devicons' }

  -- file explorer
  use {
      'nvim-tree/nvim-tree.lua',
      tag = 'nightly' -- optional, updated every week. (see issue #1193)
  }

  -- Lualine
  use { 'nvim-lualine/lualine.nvim' }

  -- Bufferline lists open buffers
  use { 'akinsho/bufferline.nvim', tag = "3.*" }

  -- undotree visualizes the undo history
  use 'mbbill/undotree'

  -- git client
  use 'tpope/vim-fugitive'

  -- lsp-zero and dependencies
  use {
	  'VonHeikemen/lsp-zero.nvim',
	  requires = {
		  -- LSP Support
		  {'neovim/nvim-lspconfig'},
		  {'williamboman/mason.nvim'},
		  {'williamboman/mason-lspconfig.nvim'},

		  -- Autocompletion
		  {'hrsh7th/nvim-cmp'},
		  {'hrsh7th/cmp-buffer'},
		  {'hrsh7th/cmp-path'},
		  {'saadparwaiz1/cmp_luasnip'},
		  {'hrsh7th/cmp-nvim-lsp'},
		  {'hrsh7th/cmp-nvim-lua'},

		  -- Snippets
		  {'L3MON4D3/LuaSnip'},
		  {'rafamadriz/friendly-snippets'},
	  }
  }

  -- autopairs
  use { 'windwp/nvim-autopairs' }

  -- toggle-term
  use {"akinsho/toggleterm.nvim", tag = '*', config = function()
      require("toggleterm").setup()
  end}

  -- -- go ide-like
  use 'ray-x/go.nvim'
  use 'ray-x/guihua.lua'    -- floating window support

  -- rust ide-like
  use {
      'rust-lang/rust.vim',
  }

  -- helm
  use {
      'towolf/vim-helm',
  }

  -- terraform
  use {
      'hashivim/vim-terraform',
  }
end)

