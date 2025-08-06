-- AUG 06, 2025

local M = {
	"jbyuki/one-small-step-for-vimkind",
	lazy = false,
	dependencies = {
		"mfussenegger/nvim-dap",
		"rcarriga/nvim-dap-ui",
	},

	config = function()
		local dap = require("dap")

		dap.adapters.nlua = function(callback, conf)
			local adapter = {
				type = "server",
				host = conf.host or "127.0.0.1",
				port = conf.port or 8086,
			}
			if conf.start_neovim then
				local dap_run = dap.run
				dap.run = function(c)
					adapter.port = c.port
					adapter.host = c.host
				end
				dap.run = dap_run
			end
			callback(adapter)
		end
		dap.configurations.lua = {
			{
				type = "nlua",
				request = "attach",
				name = "Run this file",
				start_neovim = {},
			},
			{
				type = "nlua",
				request = "attach",
				name = "Attach to running Neovim instance (port = 8086)",
				port = 8086,
			},
		}
	end,
	keys = {
		{
			"<leader>dl",
			function()
				require("osv").launch({ port = 8086 })
			end,
			desc = "Launch Lua Adapter",
		},
	},

	-- options = { auto_continue_if_many_stopped = false },
}

return { M }
