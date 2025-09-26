local wk = require('which-key')

wk.setup({
    plugins = {
        marks = true,
        registers = true,
    },
})

wk.add({
    --- BufferLine
    { '<C-[>', '<cmd>BufferLineCyclePrev<cr>', mode = "n", desc = 'jump to prev buffer' },
    { '<C-]>', '<cmd>BufferLineCycleNext<cr>', mode = "n", desc = 'jump to next buffer' },
    { '<leader>xx', '<cmd>BufferLineCloseLeft', mode = "n", desc = 'close the prev buffer' },
    { '<leader>x', '<cmd>BufferLineCloseRight', mode = "n", desc = 'close the next buffer' },
    { '<leader>xa', '<cmd>BufferLineCloseOthers', mode = "n", desc = 'close other buffers' },

    { '<leader>b1', '<cmd>BufferLineGoToBuffer 1<cr>', mode = "n", desc = 'jump to buffer 1' },
    { '<leader>b2', '<cmd>BufferLineGoToBuffer 2<cr>', mode = "n", desc = 'jump to buffer 2' },
    { '<leader>b3', '<cmd>BufferLineGoToBuffer 3<cr>', mode = "n", desc = 'jump to buffer 3' },
    { '<leader>b4', '<cmd>BufferLineGoToBuffer 4<cr>', mode = "n", desc = 'jump to buffer 4' },
    { '<leader>b5', '<cmd>BufferLineGoToBuffer 5<cr>', mode = "n", desc = 'jump to buffer 5' },
    { '<leader>b6', '<cmd>BufferLineGoToBuffer 6<cr>', mode = "n", desc = 'jump to buffer 6' },
    { '<leader>b7', '<cmd>BufferLineGoToBuffer 7<cr>', mode = "n", desc = 'jump to buffer 7' },
    { '<leader>b8', '<cmd>BufferLineGoToBuffer 8<cr>', mode = "n", desc = 'jump to buffer 8' },
    { '<leader>b9', '<cmd>BufferLineGoToBuffer 9<cr>', mode = "n", desc = 'jump to buffer 9' },
    { '<leader>b0', '<cmd>BufferLineGoToBuffer 10<cr>', mode = "n", desc = 'jump to buffer 10' },

    --- Telescope
    { '<C-f>', '<cmd>Telescope find_files<cr>', mode = "n", desc = 'Telescope find files' },
    { '<C-g>', '<cmd>Telescope live_grep<cr>', mode = "n", desc = 'Telescope live grep' },
    { '<leader>tb', '<cmd>Telescope buffers<cr>', mode = "n", desc = 'Telescope buffers' },
    { '<leader>th', '<cmd>Telescope help_tags<cr>', mode = "n", desc = 'Telescope help tags' },

    --- LSP
    { 'F', '<cmd>lua vim.lsp.buf.format{ async = true }<cr>', mode = "n", desc = 'format current buffer' },
    { 'K', '<cmd>lua vim.lsp.buf.hover()<cr>', mode = "n", desc = 'show documentation' },
    { '<leader>gD', '<cmd>lua vim.lsp.buf.declaration()<cr>', mode = "n", desc = 'go to declaration' },
    { '<leader>gd', '<cmd>lua vim.lsp.buf.definition()<cr>', mode = "n", desc = 'go to definition' },
    { '<leader>gi', '<cmd>lua vim.lsp.buf.implementation()<cr>', mode = "n", desc = 'go to implementation' },
    { '<leader>gr', '<cmd>lua vim.lsp.buf.references()<cr>', mode = "n", desc = 'go to reference' },

    --- Nvimtree
    { '<leader>tt', '<cmd>NvimTreeToggle<cr>', mode = "n", desc = 'toggle file tree' },

    --- todo-comments
    { '<leader>todo', '<cmd>TodoTelescope<cr>', mode = "n", desc = 'search with all project todos with Telescope' },
    { 
        '<leader>t[', function() 
            require('todo-comments').jump_prev()
        end, 
        mode = "n", desc = 'jump to prev todo message'  
    },
    { 
        '<leader>t]', function() 
            require('todo-comments').jump_next()
        end, 
        mode = "n", desc = 'jump to next todo message'  
    },
})

