return {
    'lewis6991/gitsigns.nvim',
    config = function()
        require("gitsigns").setup({
            signs = {
                add          = { text = '┃' },
                change       = { text = '┃' },
                delete       = { text = '┃' },
                topdelete    = { text = '‾' },
                changedelete = { text = '~' },
                untracked    = { text = '┆' },
            },
            signcolumn  = true,
            numhl       = false,
            linehl      = false,
            word_diff   = false,
            auto_attach = true,
            sign_priority    = 6,
            update_debounce  = 100,
            status_formatter = nil,
            signs_staged_enable = false,
            attach_to_untracked = false,
            current_line_blame  = false,
        })
        -- add/change/delete signs colors
        vim.cmd [[highlight GitSignsAdd guifg=Green ctermfg=Green]]
        vim.cmd [[highlight GitSignsChange guifg=Blue ctermfg=Blue]]
        vim.cmd [[highlight GitSignsDelete guifg=Red ctermfg=Red]]
    end,
}
