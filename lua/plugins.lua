-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local out = vim.fn.system({ 
    "git", 
    "clone", 
    "--filter=blob:none", 
    "--branch=stable", 
    "https://github.com/folke/lazy.nvim.git", 
    lazypath 
  })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end

vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = "\\"
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({

    --------------------
    ---     lsp      ---
    --------------------

    { 'neovim/nvim-lspconfig' },

    {
        'nvim-treesitter/nvim-treesitter', 
        build = ':TSUpdate',
    },

    { 'mason-org/mason.nvim' },

    {
        'mason-org/mason-lspconfig.nvim',
        dependencies = {
            'mason-org/mason.nvim',
            'neovim/nvim-lspconfig',
        },
    },

    {
        'nvimdev/lspsaga.nvim',
        config = function()
            require('lspsaga').setup({})
        end,
        dependencies = {
            'nvim-treesitter/nvim-treesitter', -- optional
            'nvim-tree/nvim-web-devicons',     -- optional
        }
    },

    --------------------
    ---  completion  ---
    --------------------

    { 'hrsh7th/nvim-cmp' },

    { 
        'hrsh7th/cmp-nvim-lsp', 
        dependencies = { 'nvim-cmp' }
    },

    { 
        'hrsh7th/cmp-buffer', 
        dependencies = { 'nvim-cmp' }
    },

    { 
        'hrsh7th/cmp-path', 
        dependencies = { 'nvim-cmp' }
    },

    { 
        'hrsh7th/cmp-cmdline', 
        dependencies = { 'nvim-cmp' }
    },

    {
        'saghen/blink.cmp',
        -- optional: provides snippets for the snippet source
        dependencies = { 'rafamadriz/friendly-snippets' },

        -- use a release tag to download pre-built binaries
        version = '1.*',

        opts = {
            -- See :h blink-cmp-config-keymap for defining your own keymap
            -- keymap = { preset = 'default' },

            appearance = { nerd_font_variant = 'mono' },

            completion = { documentation = { auto_show = true } },

            sources = {
                default = { 'lsp', 'path', 'snippets', 'buffer' },
            },

            fuzzy = { implementation = 'prefer_rust_with_warning' }
        },
        opts_extend = { 'sources.default' }
    },

    --------------------
    ---    tools     ---
    --------------------

    {
        'nvim-tree/nvim-tree.lua',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    {
        'akinsho/toggleterm.nvim', version = '*', config = true,
    },

    {
        'akinsho/bufferline.nvim', version = "*", 
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons' }
    },

    {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
        dependencies = { 'nvim-lua/plenary.nvim' }
    },

    { 
        'folke/which-key.nvim' ,
        event = 'VeryLazy',
        opts = {},
        keys = {
            {
                "<leader>?",
                function()
                    require('which-key').show({ global = false })
                end,
                desc = "Buffer Local Keymaps (which-key)",
            }
        },
    },

    { 'lewis6991/gitsigns.nvim' },

    --------------------
    --- colorscheme  ---
    --------------------

    { 
        'rose-pine/neovim', 
        name = 'rose-pine',
    },

    -- spec = {
    --   -- import your plugins
    --   { import = "plugins" },
    -- },
    -- -- Configure any other settings here. See the documentation for more details.
    -- -- colorscheme that will be used when installing plugins.
    -- install = { colorscheme = { "habamax" } },
    -- automatically check for plugin updates
    checker = { enabled = true },
})
