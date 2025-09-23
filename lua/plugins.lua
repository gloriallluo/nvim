-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup({
    function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        use 'neovim/nvim-lspconfig'

        use 'hrsh7th/cmp-nvim-lsp'

        use 'hrsh7th/cmp-buffer'

        use 'hrsh7th/cmp-path'

        use 'hrsh7th/cmp-cmdline'

        use 'hrsh7th/nvim-cmp'
        
        use {
            'nvim-treesitter/nvim-treesitter', 
            run = ':TSUpdate',
        }

        use {
            'nvim-tree/nvim-tree.lua',
            requires = {
                'nvim-tree/nvim-web-devicons', -- optional
            },
        }

        use {
            'akinsho/toggleterm.nvim', tag = '*', config = function()
                require("toggleterm").setup{}
            end
        }

        use {
            'akinsho/bufferline.nvim', tag = "*", 
            requires = { { 'nvim-tree/nvim-web-devicons' } }
        }

        use {
            'nvim-telescope/telescope.nvim', tag = '0.1.8',
            requires = { 'nvim-lua/plenary.nvim' },
        }

        use { 'rose-pine/neovim', as = 'rose-pine' }

    end,

    config = {
        git = {
            default_url_format = "git@github.com:%s",
        },
    },
})
