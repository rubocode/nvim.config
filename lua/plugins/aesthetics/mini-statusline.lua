local M = {
	"echasnovski/mini.statusline",
	lazy = false,
	config = function()
		require("mini.statusline").setup({
			use_icons = false,
		})
	end,
}

return { M }
