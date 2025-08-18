-- This file can be loaded by calling `lua require('plugins')` from your init.vim

return require('packer').startup({
    function(use)
        -- Packer can manage itself
        use 'wbthomason/packer.nvim'

        use {
            'nvim-tree/nvim-tree.lua',
            requires = {
                'nvim-tree/nvim-web-devicons', -- optional
            },
        }

        use {
            'akinsho/toggleterm.nvim', tag = '*', config = function()
                require("toggleterm").setup()
            end
        }

        use {
            'akinsho/bufferline.nvim', tag = "*", 
            requires = {
                'nvim-tree/nvim-web-devicons'
            },
        }

    end,

    config = {
        git = {
            default_url_format = "git@github.com:%s",
        },
    },
})
