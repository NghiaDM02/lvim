-- Additional Plugins
lvim.plugins = {
	"nvim-treesitter/playground",
	-- { "catppuccin/nvim", as = "catppuccin" },
	"rmehri01/onenord.nvim",
	"nvim-treesitter/nvim-treesitter-textobjects",
	"p00f/nvim-ts-rainbow",
	"mfussenegger/nvim-jdtls",
	"karb94/neoscroll.nvim",
	"j-hui/fidget.nvim",
	"windwp/nvim-ts-autotag",
	"kylechui/nvim-surround",
	"christianchiarulli/harpoon",
	"NvChad/nvim-colorizer.lua",
	"folke/todo-comments.nvim",
	"windwp/nvim-spectre",
	"folke/zen-mode.nvim",
	"lvimuser/lsp-inlayhints.nvim",
	"kevinhwang91/nvim-bqf",
	"nacro90/numb.nvim",
	"jose-elias-alvarez/typescript.nvim",
	"ghillb/cybu.nvim",
	"moll/vim-bbye",
	"mxsdev/nvim-dap-vscode-js",
	{
		"folke/trouble.nvim",
		requires = "kyazdani42/nvim-web-devicons",
		config = function()
			require("trouble").setup({})
		end,
	},
	{ "christianchiarulli/telescope-tabs", branch = "chris" },
	{ "tzachar/cmp-tabnine", run = "./install.sh" },
	{
		"nvim-telescope/telescope-media-files.nvim",
	},
}
