local M = {
	"folke/zen-mode.nvim",
	lazy = false,
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		vim.keymap.set("n", "<leader>zm", ":ZenMode<CR>")
	end,
}

return { M }
