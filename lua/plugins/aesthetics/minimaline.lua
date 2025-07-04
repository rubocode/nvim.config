local M = {
	"javiorfo/nvim-minimaline",
	lazy = false,

	-- Optional (only if you want file icons in the statusline)
	dependencies = { "nvim-tree/nvim-web-devicons" },

	opts = {
		-- Default init. For further configuration read below
		-- require("minimaline").setup()
		-- Disable minimaline in the following filetypes (default is empty table)
		disabled_filetypes = { "NvimTree*" },

		-- Enable or disable colors on LSP diagnostics (default is false)
		lsp_colors_enabled = true,

		-- Set minimaline colors
		-- Use 256 Xterm colors
		-- foreground is "fg", background is "bg" and additionally "gui" could contain "bold", "italic" or combination "bold,italic"
		-- Set only one option is possible (only fg or only bg, etc)
		style = { fg = 15, bg = 0 },
	},
	config = function()
		require("minimaline").setup({})
	end,
}

return { M }
