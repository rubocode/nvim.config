local M = {
	"saghen/blink.cmp",
	dependencies = "rafamadriz/friendly-snippets",
	lazy = false,
	version = "v0.*",
	opts = {
		keymap = { preset = "default" },
		appearance = {
			use_nvim_cmp_as_default = false,
		},
		signature = { enabled = true },
	},
}

return { M }
