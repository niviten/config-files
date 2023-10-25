-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- To search for files and stuff
  use {
	  'nvim-telescope/telescope.nvim', tag = '0.1.4',
	  -- or                            , branch = '0.1.x',
	  requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- ThePrimeagen's theme, only dark mode
  -- use({ 'rose-pine/neovim', as = 'rose-pine' })

  -- Sytax highlighting?
  use {
	  'nvim-treesitter/nvim-treesitter',
	  run = ':TSUpdate'
  }

  -- Light theme
  use({
	  'projekt0n/github-nvim-theme',
	  config = function()
		  require('github-theme').setup({
			  -- ...
		  })

		  vim.cmd('colorscheme github_light')
	  end
  })

  -- Buffer stuffs
  use('ThePrimeagen/harpoon')

  -- Undo tree
  use('mbbill/undotree')

  -- Git stuffs
  use('tpope/vim-fugitive')

  -- LSP stuffs
  use {
          'VonHeikemen/lsp-zero.nvim',
          branch = 'v3.x',
          requires = {
        	  --- Uncomment these if you want to manage LSP servers from neovim
        	  {'williamboman/mason.nvim'},
        	  {'williamboman/mason-lspconfig.nvim'},

        	  -- LSP Support
        	  {'neovim/nvim-lspconfig'},
        	  -- Autocompletion
        	  {'hrsh7th/nvim-cmp'},
        	  {'hrsh7th/cmp-nvim-lsp'},
        	  {'L3MON4D3/LuaSnip'},
          }
  }

  -- File explorer
  use('preservim/nerdtree')

  -- Github Copilot
  use('github/copilot.vim')

  -- Status bar
  use('itchyny/lightline.vim')

  -- Autopairs
  use('jiangmiao/auto-pairs')

  -- Discord presence
  use('andweeb/presence.nvim')

  -- Wakatime tracking
  use('wakatime/vim-wakatime')
end)
