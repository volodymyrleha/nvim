-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

    -- Navigation
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.6',
        -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

    use {
        "ahmedkhalf/project.nvim",
        config = function()
            require("project_nvim").setup {
                -- patterns = { ".git" }
            }
        end
    }

    -- Themes
    -- use { "catppuccin/nvim", as = "catppuccin" }
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'nvim-tree/nvim-web-devicons', opt = true }
    }
    use { "rose-pine/neovim", as = "rose-pine" }

    -- LSP
    use('nvim-treesitter/nvim-treesitter', {run = ':TSUpdate'})
	
    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v3.x',
        requires = {
            {'williamboman/mason.nvim'},
            {'williamboman/mason-lspconfig.nvim'},

			{'neovim/nvim-lspconfig'},
			{'hrsh7th/nvim-cmp'},
			{'hrsh7th/cmp-nvim-lsp'},
			{'L3MON4D3/LuaSnip'},
		}
	}

    -- GIT
    use 'lewis6991/gitsigns.nvim'
    use 'tpope/vim-fugitive'

    -- Convenience 
    use "terrortylor/nvim-comment"

    -- JavaScript Plugins
    use 'David-Kunz/jester'
end)
