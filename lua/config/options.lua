local options = {
    -- copied from bread's config
    ruler = false, --disable extra numbering
    showmode = false, --not needed due to lualine
    showcmd = false,
    wrap = true, --toggle bound to leader W
    mouse = "a", --enable mouse
    clipboard = "unnamedplus", --system clipboard integration
    history = 100, --command line history
    swapfile = false, --swap just gets in the way, usually
    backup = false,
    cursorline = true, --highlight line
    ttyfast = true, --faster scrolling
    smoothscroll = true,

    foldmethod = "expr",
    foldlevel = 99, --disable folding, lower #s enable
    foldexpr = "nvim_treesitter#foldexpr()",

    termguicolors = false,

    ignorecase = true, --ignore case while searching
    smartcase = true, --but do not ignore if caps are used

    -- my custom stuff
    tabstop = 4,
    softtabstop = 0,
    shiftwidth = 0,
    expandtab = true,
    colorcolumn = '100', -- 100 chars vertical line
    textwidth = 100,
    number = true,
    relativenumber = false,
    updatetime = 250, -- Decrease update time
    timeoutlen = 300, -- Displays which-key popup sooner
    signcolumn = "yes:1", -- show one col for git symbols
}

for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.diagnostic.config({
    signs = false,
})

-- vertical line at 'colorcolumn' symbols
vim.cmd [[highlight ColorColumn ctermbg=0 guibg=grey1]]
