return {

	-- vim fugitive
	{ 'tpope/vim-fugitive' },

	-- vim surround
	{ 'tpope/vim-surround' },

	-- Nerd tree
	{ 'scrooloose/nerdtree' },

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

	-- Syntax package
	{ 'sheerun/vim-polyglot' },

	-- Python highlighting
	{ 'vim-python/python-syntax' },

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

	{ 'SirVer/ultisnips' },

	-- Copilot
	{"github/copilot.vim"},

	-- { 'williamboman/mason.nvim' },
	-- { 'williamboman/mason-lspconfig.nvim' },
	-- { 'neovim/nvim-lspconfig' },
	--

}
