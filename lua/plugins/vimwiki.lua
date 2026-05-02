return {
    "vimwiki/vimwiki",
    -- keys = {
    --     { "<leader>qw", "<cmd>VimwikiIndex<cr>", desc = "Open Vimwiki index" },
    --     { "<leader>qt", "<cmd>VimwikiTabIndex<cr>", desc = "Open Vimwiki in tab" },
    --     { "<leader>qd", "<cmd>VimwikiDiaryIndex<cr>", desc = "Open diary" },
    -- },
    init = function()
        -- Vimwiki uses global variables, so set them in init
        vim.g.vimwiki_list = {
            {
                path = "~/.local/share/notes/",
                syntax = "markdown",
                ext = ".md",
            },
        }
    vim.g.vimwiki_global_ext = 0
    end,
}
