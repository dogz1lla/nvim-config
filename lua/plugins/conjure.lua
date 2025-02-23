-- https://github.com/Olical/conjure?tab=readme-ov-file#installation
return {
    'Olical/conjure',
    ft = { 'clojure', 'fennel' }, -- etc
    -- [Optional] cmp-conjure for cmp
    dependencies = {},
    config = function(_, opts)
      require('conjure.main').main()
      require('conjure.mapping')['on-filetype']()
    end,
    init = function()
      -- Set configuration options here
      vim.g['conjure#debug'] = false
    end,
}
