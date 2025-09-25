require('bufferline').setup({
    options = {
        numbers = function(opts)
            return string.format("%s", opts.ordinal)
        end,
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

