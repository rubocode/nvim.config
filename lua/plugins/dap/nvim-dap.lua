-- AUG 05, 2025

local M = {
	"mfussenegger/nvim-dap",
	lazy = false,
	config = function()
		vim.keymap.set("n", "<leader>db", require("dap").toggle_breakpoint, { noremap = true })
		vim.keymap.set("n", "<leader>dc", require("dap").continue, { noremap = true })
		vim.keymap.set("n", "<leader>do", require("dap").step_over, { noremap = true })
		vim.keymap.set("n", "<leader>di", require("dap").step_into, { noremap = true })

		vim.keymap.set("n", "<leader>dl", function()
			require("osv").launch({ port = 8086 })
		end, { noremap = true })

		vim.keymap.set("n", "<leader>dw", function()
			local widgets = require("dap.ui.widgets")
			widgets.hover()
		end)

		vim.keymap.set("n", "<leader>df", function()
			local widgets = require("dap.ui.widgets")
			widgets.centered_float(widgets.frames)
		end)
	end,
}

return { M }
