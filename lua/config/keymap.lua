-- mappings, including plugins

local function map(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- -- set leader
-- map("", "<Space>", "<Nop>")
-- vim.g.mapleader = " "
-- vim.g.maplocalleader = " "

-- buffers
map("n", "<leader><leader>", ":lua require('fzf-lua').buffers()<CR>")
map("n", "<leader>bn",       ":bnext<CR>")
map("n", "<leader>bp",       ":bprevious<CR>")
map("n", "<leader>q",        ":bd<CR>")
map("n", "<leader>vs",       ":vsplit<CR>:bnext<CR>")  -- ver split + open next buffer

-- windows - ctrl nav, fn resize
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

-- fzf and grep
map("n", "<leader>f",  ":lua require('fzf-lua').files()<CR>")                                  -- search cwd
map("n", "<leader>sh", ":lua require('fzf-lua').files({ cwd = '~/' })<CR>")                    -- search home
map("n", "<leader>sc", ":lua require('fzf-lua').files({ cwd = '~/.config' })<CR>")             -- search .config
map("n", "<leader>sn", ":lua require('fzf-lua').files({ cwd = '~/.config/nvim-config' })<CR>") -- search .config/nvim-config
map("n", "<leader>sa", ":lua require('fzf-lua').files({ cwd = '..' })<CR>")                    -- search above
map("n", "<leader>sl", ":lua require('fzf-lua').resume()<CR>")                                 -- last search
map("n", "<leader>g",  ":lua require('fzf-lua').grep()<CR>")                                   -- grep
map("n", "<leader>G",  ":lua require('fzf-lua').grep_cword()<CR>")                             -- grep word under cursor
map("n", "<leader>gs", ":lua require('fzf-lua').git_status()<CR>")                             -- git status
map("n", "<leader>gc", ":lua require('fzf-lua').git_commits()<CR>")                            -- git commit history

-- misc
map("n", "<leader>s",  ":%s//g<Left><Left>")   -- replace all
map("n", "<leader>t",  ":NvimTreeToggle<CR>")  -- open file explorer
map("n", "<leader>w",  ":w<CR>")               -- write but one less key
map("n", "<leader>mv", ":!mv % ")              -- move a file to a new dir
map("n", "<leader>R",  ":so %<CR>")            -- reload neovim config
map("n", "<leader>W",  ":set wrap!<CR>")       -- toggle wrap
