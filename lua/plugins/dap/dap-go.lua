-- AUG 05, 2025

local M = {
	"leoluz/nvim-dap-go",
	lazy = false,
	dependencies = {
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",
	},
	config = function()
		require("dap-go").setup()
	end,
}

return { M }
