-- see https://www.josean.com/posts/nvim-treesitter-and-textobjects
return {
    "nvim-treesitter/nvim-treesitter",
    branch = "main",
    build = ":TSUpdate",
    opts = {
        ensure_installed = {
            "lua",
            "markdown",
            "markdown_inline",
            "python",
            "go",
            "bash",
            "html",
            "css",
            "json",
            "query",
            "regex",
            "vim",
            "yaml",
            "vimdoc",
            "comment",
            "clojure",
        },
    },
    config = function(_, opts)
        -- The new main branch provides a safe, native setup method under the hood 
        -- that automatically ignores UI files like NvimTree, Telescope, or Lazy.
        require("nvim-treesitter").setup(opts)

        -- TODO/NOTE/WARNING/FIXME highlights
        -- Define explicit custom names to prevent color scheme overrides
        vim.api.nvim_set_hl(0, "CustomTodo",    { ctermfg = "yellow",  fg = "#FFFF00", bold = true })
        vim.api.nvim_set_hl(0, "CustomNote",    { ctermfg = "magenta", fg = "#FF00FF", bold = true })
        vim.api.nvim_set_hl(0, "CustomWarning", { ctermfg = "cyan",    fg = "#00E5FF", bold = true })
        vim.api.nvim_set_hl(0, "CustomFixme",   { ctermfg = "red",     fg = "#FF0000", bold = true })

        -- Map the standard Tree-sitter capture groups to our custom groups
        vim.api.nvim_set_hl(0, "@comment.todo",    { link = "CustomTodo" })
        vim.api.nvim_set_hl(0, "@text.todo",       { link = "CustomTodo" })
        vim.api.nvim_set_hl(0, "@keyword.todo",    { link = "CustomTodo" })

        vim.api.nvim_set_hl(0, "@comment.note",    { link = "CustomNote" })
        vim.api.nvim_set_hl(0, "@text.note",       { link = "CustomNote" })

        vim.api.nvim_set_hl(0, "@comment.warning", { link = "CustomWarning" })
        vim.api.nvim_set_hl(0, "@text.warning",    { link = "CustomWarning" })

        vim.api.nvim_set_hl(0, "@comment.error",   { link = "CustomFixme" })
        vim.api.nvim_set_hl(0, "@text.danger",     { link = "CustomFixme" })

        -- Fallback absolute regex matcher to guarantee colors across all buffers
        vim.api.nvim_create_autocmd({ "WinEnter", "BufEnter" }, {
            callback = function()
                vim.fn.matchadd("CustomTodo",    [[\<TODO\>]])
                vim.fn.matchadd("CustomNote",    [[\<NOTE\>]])
                vim.fn.matchadd("CustomWarning", [[\<WARNING\>]])
                vim.fn.matchadd("CustomFixme",   [[\<FIXME\>]])
            end,
        })
    end,
}
