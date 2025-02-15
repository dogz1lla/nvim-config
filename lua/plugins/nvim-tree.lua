return {
  "nvim-tree/nvim-tree.lua",
  version = "*",
  lazy = false,
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    require("nvim-tree").setup({
			view = {
					width = 25,
					side = 'left',
			},
			sync_root_with_cwd = true,
			respect_buf_cwd = true,
			update_cwd = true,
			update_focused_file = {
					enable      = true,
					update_cwd  = true,
					update_root = true,
			},
	})
	vim.g.nvim_tree_respect_buf_cwd = 1
  end,
}
