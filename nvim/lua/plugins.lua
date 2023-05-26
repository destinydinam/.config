local status, packer = pcall(require, 'packer')
if (not status) then 
  print ('Packer is not installed!')
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
 use 'wbthomason/packer.nvim'
 use {
   'svrana/neosolarized.nvim',
   requires = { 'tjdevries/colorbuddy.nvim' }
 }
 use 'hoob3rt/lualine.nvim'  -- statusline
 run = function()
        pcall(vim.cmd, 'MasonUpdate')
      end
  use {
  'nvim-treesitter/nvim-treesitter',
  run = ':TSUpdate'
 }
 use 'windwp/nvim-autopairs'
 use 'windwp/nvim-ts-autotag'
 use 'nvim-lua/plenary.nvim' -- Common utilities
 use 'nvim-telescope/telescope.nvim'
 use 'nvim-telescope/telescope-file-browser.nvim'
 use 'kyazdani42/nvim-web-devicons' -- File icons
 use 'kyazdani42/nvim-tree.lua' -- nvim-tree
 use 'akinsho/nvim-bufferline.lua'
 use 'norcalli/nvim-colorizer.lua'
 use 'jose-elias-alvarez/null-ls.nvim' -- Use Neovim as a language server to inject LSP diagnostics, code actions, and more via Lua
 use 'MunifTanjim/prettier.nvim'
 use 'lewis6991/gitsigns.nvim'
 use 'dinhhuy258/git.nvim' -- For git blame & browse
use {"akinsho/toggleterm.nvim", tag = '*', config = function()
  require("toggleterm").setup() end }

  use {
	  'VonHeikemen/lsp-zero.nvim',
	  branch = 'v1.x',
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



end)


