local M = {
	"folke/tokyonight.nvim",
	lazy = false,
	dev = false,
	opts = {
		style = "night",
		transparent = true,
		styles = {
			sidebars = "transparent",
			floats = "transparent",
		},
		on_highlights = function(hl, c)
			hl.LineNrAbove = { fg = c.dark5 }
			hl.LineNrBelow = { fg = c.dark5 }
		end,
		config = function()
		end,
    },
}

return { M }
