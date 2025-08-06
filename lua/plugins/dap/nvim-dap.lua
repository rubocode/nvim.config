-- AUG 05, 2025

local M = {
	"mfussenegger/nvim-dap",
	lazy = false,
	config = function()
		local dap = require("dap")
		vim.keymap.set("n", "<leader>db", dap.toggle_breakpoint, { noremap = true, desc = "Toggle Breakpoint" })
		vim.keymap.set("n", "<leader>dc", dap.continue, { noremap = true, desc = "Continue" })
		vim.keymap.set("n", "<leader>do", dap.step_over, { noremap = true, desc = "Step Over" })
		vim.keymap.set("n", "<leader>di", dap.step_into, { noremap = true, desc = "Step Into" })
	end,
}
return { M }
