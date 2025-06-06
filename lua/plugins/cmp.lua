-- based on the lsp config from kickstart.nvim
return { -- autocomplete
    'hrsh7th/nvim-cmp',
    event = 'InsertEnter',
    dependencies = {
        -- Adds other completion capabilities.
        -- nvim-cmp does not ship with all sources by default. They are split into multiple repos
        -- for maintenance purposes.
        'hrsh7th/cmp-nvim-lsp',
        'hrsh7th/cmp-path',
    },
    config = function()
        -- See `:help cmp`
        local cmp = require 'cmp'

        cmp.setup {
            completion = { completeopt = 'menu,menuone,noinsert' },

            -- For an understanding of why these mappings were
            -- chosen, you will need to read `:help ins-completion`
            --
            -- No, but seriously. Please read `:help ins-completion`, it is really good!
            mapping = cmp.mapping.preset.insert {
                -- Select the [n]ext item
                ['<C-n>'] = cmp.mapping.select_next_item(),
                -- Select the [p]revious item
                ['<C-p>'] = cmp.mapping.select_prev_item(),

                -- Scroll the documentation window [b]ack / [f]orward
                ['<C-b>'] = cmp.mapping.scroll_docs(-4),
                ['<C-f>'] = cmp.mapping.scroll_docs(4),

                -- Accept ([y]es) the completion.
                --  This will auto-import if your LSP supports it.
                --  This will expand snippets if the LSP sent a snippet.
                ['<C-y>'] = cmp.mapping.confirm { select = true },

                -- Manually trigger a completion from nvim-cmp.
                --  Generally you don't need this, because nvim-cmp will display
                --  completions whenever it has completion options available.
                ['<C-Space>'] = cmp.mapping.complete {},
            },
        sources = {
            { name = 'nvim_lsp' },
            { name = 'path' },
        },
    }
    end,
}
