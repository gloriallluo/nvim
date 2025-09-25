require('lualine').setup({
    options = {
        icons_enabled = true,
        disabled_filetypes = {
            statusline = {},
            winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        always_show_tabline = true,
        globalstatus = false,
    },
    sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'progress' },
        lualine_y = { 'encoding' },
        lualine_z = { 'hostname' },
    },
    inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename'},
        lualine_x = { 'progress' },
        lualine_y = {},
        lualine_z = {},
    },
    tabline = {},
    winbar = {},
})

