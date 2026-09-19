local M = {
	"stevearc/conform.nvim",
	opts = {},
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				go = { "goimports", "golines", "gofmt" },
				rust = { "rustfmt" },
			},
			format_on_save = {
				lsp_fallback = true,
				async = false,
			},
		})

		vim.keymap.set("n", "<C-f>", function()
			require("conform").format()
		end, { desc = "Format current file" })
	end,
}
return { M }
