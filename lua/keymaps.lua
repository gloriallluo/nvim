-- define common options
local opts = {
    noremap = true,      -- non-recursive
    silent = true,       -- do not show message
}

-----------------
-- Normal mode --
-----------------

-- Hint: see `:h vim.map.set()`
-- Better window navigation
-- vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
-- vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
-- vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
-- vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- Resize with arrows
-- delta: 2 lines
vim.keymap.set('n', '<C-Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<C-Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<C-Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<C-Right>', ':vertical resize +2<CR>', opts)

-- Bufferline
vim.keymap.set('n', '<C-[>', ':BufferLineCyclePrev<CR>', opts)
vim.keymap.set('n', '<C-]>', ':BufferLineCycleNext<CR>', opts)

-- Telescope
local telescope_builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-f>', telescope_builtin.find_files, opts)
vim.keymap.set('n', '<C-g>', telescope_builtin.live_grep, opts)
vim.keymap.set('n', '<C-b>', telescope_builtin.buffers, opts)
vim.keymap.set('n', '<C-h>', telescope_builtin.help_tags, opts)

-----------------
-- Visual mode --
-----------------

-- Hint: start visual mode with the same area as the previous area and the same mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)
