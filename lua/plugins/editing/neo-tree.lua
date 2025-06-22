local M = {
  'nvim-neo-tree/neo-tree.nvim',
	branch = "v3.x",
	lazy = false,
	dependencies = {
		"nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
    "MunifTanjim/nui.nvim",
  },
	opts = {
		window = {
      position = "left",
      width = 30,
			auto_expand_width = true,
    },
	},
	config = function()
		require("neo-tree").setup({
      hijack_netrw_behavior = "disabled",
    })

		-- vim.keymap.set('n', '<C-n>', ':Neotree toggle filesystem reveal left<CR>') 
		vim.keymap.set('n', '<C-n>', ':Neotree toggle current reveal_force_cwd<CR>')
		
	end
}

return { M }
