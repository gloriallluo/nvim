require('options')
require('keymaps')
require('plugins')
require('colorscheme')
require('lsp')

-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
require("bufferline").setup({
    options = {
        offsets = {
            {
                filetype = "NvimTree",
                text = function()
                    return vim.fn.getcwd()
                end,
                text_align = "left",
                separator = true
            }
        },
    }
})

require("toggleterm").setup({
    open_mapping = [[<c-\>]],
    direction = 'float',
    float_opts = { border = 'single' },
})

-- OR setup with some options
require("nvim-tree").setup({
    sort = {
        sorter = "case_sensitive",
    },
    view = {
        width = 30,
    },
    renderer = {
        group_empty = true,
    },
    filters = {
        dotfiles = true,
    },
})

require("telescope").setup({})

require("lspconfig").clangd.setup({
    cmd = {'clangd', '--background-index', '--clang-tidy', '--log=verbose'},
    init_options = {
        fallbackFlags = { '-std=c++17' },
    },
})
