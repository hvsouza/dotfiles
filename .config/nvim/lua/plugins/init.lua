return {

	-- vim fugitive
	{ 'tpope/vim-fugitive' },

	-- vim surround
	{ 'tpope/vim-surround' },

	-- Navigation
	{
		"nvim-tree/nvim-tree.lua",
		dependencies = "nvim-tree/nvim-web-devicons",
	},

	-- add dracula
	{ 'dracula/vim' , name='dracula', priority = 10000},

	-- Lightline statusbar==
	{ 'itchyny/lightline.vim' },

	-- Vim repeat
	{ 'tpope/vim-repeat' },

	-- Vim commentary
	{ 'tpope/vim-commentary' },

	-- Well ..
	{ 'CrossR/vim-fhicl' },

	-- Well.. easy align
	{ 'junegunn/vim-easy-align' },

	-- Vim undo tree
	{ 'mbbill/undotree' },

	-- For jump in indentation
	{ 'jeetsukumaran/vim-indentwise' },

	-- for moving easily :P
	{ 'easymotion/vim-easymotion' },


	-- install with yarn or npm
	{
	  "iamcco/markdown-preview.nvim",
	  cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	  build = "cd app && yarn install",
	  init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	  end,
	  ft = { "markdown" },
	},

	{ 'nvim-lua/plenary.nvim' },
	{ 'nvim-telescope/telescope.nvim' , tag='0.1.8' },
	{ 'nvim-telescope/telescope-file-browser.nvim' },

	{ 'lervag/vimtex' },

	{ 'SirVer/ultisnips', event = { 'InsertEnter' } },

	-- Copilot
	{"github/copilot.vim"},


	-- Which key
	{
		"folke/which-key.nvim",
		event = "VeryLazy",
		init = function()
			vim.o.timeout = true
			vim.o.timeoutlen = 500
		end,
	},

	-- Dashboard (presentation)
	{
		"goolord/alpha-nvim",
		event = "VimEnter",
	},

	-- Icons
	{ "nvim-tree/nvim-web-devicons", opts = {} },

	-- Better tabs
	{
		"akinsho/bufferline.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		version = "*",
		opts = {
			options = {
				mode = "tabs",
				separator_style = "slant",
			},
		},
	},


	-- Indent guide
	{
		"lukas-reineke/indent-blankline.nvim",
		event = { "BufReadPre", "BufNewFile" },
		main = "ibl",
		opts = {
			indent = { char = "┊" },
		},
	},


	-- Completion
	{
		"hrsh7th/nvim-cmp",
		event = "InsertEnter",
		dependencies = {
			"hrsh7th/cmp-buffer", -- source for text in buffer
			"hrsh7th/cmp-path", -- source for file system paths
			"hrsh7th/cmp-cmdline",
			{
				"L3MON4D3/LuaSnip",
				-- follow latest release.
				version = "v2.*", -- Replace <CurrentMajor> by the latest released major (first number of latest release)
				-- install jsregexp (optional!).
				build = "make install_jsregexp",
			},
			"saadparwaiz1/cmp_luasnip", -- for autocompletion
			"onsails/lspkind.nvim", -- vs-code like pictograms
		},
	},
	{"p00f/clangd_extensions.nvim"},

	-- LSP
	{
		"ray-x/lsp_signature.nvim",
	},

	{
		"folke/trouble.nvim",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			require("trouble").setup {
				-- your configuration comes here
				-- or leave it empty to use the default settings
				-- refer to the configuration section below
			}
		end
	},
}
