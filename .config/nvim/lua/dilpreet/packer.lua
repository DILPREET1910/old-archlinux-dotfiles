-- Only required if you have packer configured as `opt`
vim.cmd([[packadd packer.nvim]])

return require("packer").startup(function(use)
	-- Packer can manage itself
	use("wbthomason/packer.nvim")

	-- telescope
	use({
		"nvim-telescope/telescope.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
		tag = "0.1.5",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- catppuccin color scheme
	use({
		"catppuccin/nvim",
		as = "catppuccin",
	})

	-- tree sitter
	use({
		"nvim-treesitter/nvim-treesitter",
		run = ":TSUpdate",
	})

	-- lsp
	use({
		"williamboman/mason.nvim", -- lsp package manager
		"williamboman/mason-lspconfig.nvim", -- bridges mason and nvim lspconfig
		"neovim/nvim-lspconfig", -- lsp configuration
	})

	-- file tree
	use({
		"nvim-tree/nvim-tree.lua",
		"nvim-tree/nvim-web-devicons",
	})

	-- packer
	use({
		"nvim-lualine/lualine.nvim",
		requires = { "nvim-tree/nvim-web-devicons", opt = true },
	})

	-- nvim surround
	use({
		"kylechui/nvim-surround",
		tag = "*", -- Use for stability; omit to use `main` branch for the latest features
		config = function()
			require("nvim-surround").setup({
				-- Configuration here, or leave empty to use defaults
			})
		end,
	})

	-- autocompletion
	use({
		"hrsh7th/nvim-cmp",
		"hrsh7th/cmp-nvim-lsp",
		"L3MON4D3/LuaSnip",
		"saadparwaiz1/cmp_luasnip",
		"rafamadriz/friendly-snippets",
	})

	-- git
	use({
		"tpope/vim-fugitive",
		"lewis6991/gitsigns.nvim",
	})

	-- wakatime
	use({
		"wakatime/vim-wakatime",
	})

	-- vim colorizer
	use({
		"norcalli/nvim-colorizer.lua",
	})

	-- toggle term (terminal in nvim)
	use({
		"akinsho/toggleterm.nvim",
	})

	-- harpoon
	use({
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { { "nvim-lua/plenary.nvim" } },
	})

	-- none ls
	use({
		"nvimtools/none-ls.nvim",
	})

	-- alpha nvim
	use({
		"goolord/alpha-nvim",
	})

	-- nvim tmux navigator
	use({
		"christoomey/vim-tmux-navigator",
	})

	-- indentation lines
	use({
		"lukas-reineke/indent-blankline.nvim",
	})

	-- autopairs -> autocomplete brackets, quotes and html tags
	use({
		"windwp/nvim-autopairs",
		"windwp/nvim-ts-autotag",
	})

	-- bufferline
	use({
		"akinsho/bufferline.nvim",
	})

	-- copilot
	use({
		"github/copilot.vim",
	})

	-- noice nvim
	use({
		"folke/noice.nvim",
		requires = {
			"MunifTanjim/nui.nvim",
		},
	})

	-- leetcode in nvim
	use({
		"kawre/leetcode.nvim",
		run = ":TSUpdate html",
	})

	-- transparent nvim
	use({
		"xiyaowong/transparent.nvim",
	})

	-- jdtls connector
	use({
		"mfussenegger/nvim-jdtls",
	})

	-- undo tree
	use({
		"mbbill/undotree",
	})
end)
