-- see https://www.josean.com/posts/nvim-treesitter-and-textobjects
return {
    "nvim-treesitter/nvim-treesitter",
    config = function()
        local treesitter = require("nvim-treesitter.configs")
        -- configure treesitter
        treesitter.setup({ -- enable syntax highlighting
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
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            -- enable indentation
            indent = { enable = true },
        })
    end,
}
