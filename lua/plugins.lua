return require('packer').startup(function(use)
	-- Packer can manager itself
	use { 'wbthomason/packer.nvim' }

	-- vimtex
	use { 'lervag/vimtex' }

	-- luasnips
	use { 'L3MON4D3/LuaSnip' }

	-- nvim-tree
	use {
		'nvim-tree/nvim-tree.lua',
		requires = { 'kyazdani42/nvim-web-devicons' }
	}

	-- telescope
	-- fuzzy search
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.4',
		requires = { 'nvim-lua/plenary.nvim' }
	}

	-- treesitter
	use { 
		'nvim-treesitter/nvim-treesitter',
		run = ':TSUpdate'
	}

	-- theme
	use { "ellisonleao/gruvbox.nvim" }

	-- lsp
	use { 'williamboman/mason.nvim' }
	use { 'williamboman/mason-lspconfig.nvim' }
	use { 'neovim/nvim-lspconfig' }

	-- cmp
	use { 'hrsh7th/cmp-nvim-lsp' }
	use { 'hrsh7th/cmp-buffer' }
	use { 'hrsh7th/cmp-path' }
	use { 'hrsh7th/cmp-cmdline' }
	use { 'hrsh7th/nvim-cmp' }
	use { 'saadparwaiz1/cmp_luasnip' }

	-- dap
	use { 'mfussenegger/nvim-dap' }

end)
