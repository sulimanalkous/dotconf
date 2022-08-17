-- [[ plug.lua ]]

return require('packer').startup(function(use)
	-- [[ Plugins Go Here ]]
	use {
		'kyazdani42/nvim-tree.lua',
		requires = 'kyazdani42/nvim-web-devicons'
	}
        use { 
          'nvim-treesitter/nvim-treesitter',
          run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
      }

      use { 'neovim/nvim-lspconfig'}

      -- Debugging
      use {'nvim-lua/plenary.nvim'}
      use {'mfussenegger/nvim-dap'} 


	-- [[ Theme ]]
	use { 'mhinz/vim-startify' }
	use { 'DanilaMihailov/beacon.nvim' }
	use {
		'nvim-lualine/lualine.nvim',
		requires = {'kyazdani42/nvim-web-devicons', opt = true}
	}
	use { 'Mofiqul/dracula.nvim' }
        use { 'tomasr/molokai' }

	-- [[ Dev ]]
	use {
		'nvim-telescope/telescope.nvim',		-- quickly file files
		requires = { {'nvim-lua/plenary.nvim'} }
	}
        use { "williamboman/mason.nvim" }                  -- will regularly shell out to external package managers
	use { 'majutsushi/tagbar' }                        -- code structure
	use { 'Yggdroot/indentLine' }                      -- see indentation
	use { 'tpope/vim-fugitive' }                       -- git integration
	use { 'junegunn/gv.vim' }                          -- commit history
	use { 'windwp/nvim-autopairs' }                    -- auto close brackets, etc.
	use { 'tpope/vim-surround'}			   -- surround tags, qoutes, brackets...etc
        use { 'nvim-treesitter/highlight.lua'}             -- A Dynamic Syntax Highlighter Using TreeSitter

                -- Collection of common configurations for the Nvim LSP client
        use { 
          "williamboman/nvim-lsp-installer",
          'neovim/nvim-lspconfig',
        }

        use {'liuchengxu/graphviz.vim'}

        -- Completion framework
        use { 'hrsh7th/nvim-cmp' }

        -- LSP completion source for nvim-cmp
        use { 'hrsh7th/cmp-nvim-lsp' }

        -- Snippet completion source for nvim-cmp
        use { 'hrsh7th/cmp-vsnip' }

        -- Other usefull completion sources
        use{ 'hrsh7th/cmp-path'} 
        use{ 'hrsh7th/cmp-buffer'}

        -- See hrsh7th's other plugins for more completion sources!

        -- To enable more of the features of rust-analyzer, such as inlay hints and more!
        use{ 'simrat39/rust-tools.nvim'}

        -- Snippet engine
        use{ 'hrsh7th/vim-vsnip'}

        -- Fuzzy finder
        -- Optional
        use{ 'nvim-lua/popup.nvim'}
        use{ 'nvim-lua/plenary.nvim'}

        -- Color scheme used in the GIFs!
        use{ 'arcticicestudio/nord-vim'}


	config = {
		package_root = vim.fn.stdpath('config') .. '/site/pack'
	}
end)
