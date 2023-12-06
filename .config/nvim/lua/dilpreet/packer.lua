-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- telescope
  use {
	  'nvim-telescope/telescope.nvim', 
	  tag = '0.1.5',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- catppuccin color scheme
  use { 
	  "catppuccin/nvim", 
	  as = "catppuccin",
  }

  -- tree sitter
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }
end)
