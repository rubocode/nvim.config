-- AUG 06, 2025

local M = {
	"rcarriga/nvim-dap-ui",
	dependencies = {
		"mfussenegger/nvim-dap",
		"nvim-neotest/nvim-nio",
		"theHamsta/nvim-dap-virtual-text",
	},
	config = function()
		require("dapui").setup()

		local dap = require("dap")
		local dapui = require("dapui")

		dap.listeners.before.attach.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.launch.dapui_config = function()
			dapui.open()
		end
		dap.listeners.before.event_terminated.dapui_config = function()
			dapui.close()
		end
		dap.listeners.before.event_exited.dapui_config = function()
			dapui.close()
		end

		local widgets = require("dap.ui.widgets")
		vim.keymap.set({ "n", "v" }, "<Leader>dh", widgets.hover)
		vim.keymap.set({ "n", "v" }, "<Leader>dp", widgets.preview)

		vim.keymap.set("n", "<Leader>df", function()
			widgets.centered_float(widgets.frames)
		end)

		vim.keymap.set("n", "<Leader>ds", function()
			widgets.centered_float(widgets.scopes)
		end)
	end,

	keys = {
		{
			"<leader>du",
			function()
				require("dapui").toggle({})
			end,
			desc = "Dap UI Toggle",
		},
	},
}

return { M }
