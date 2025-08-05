-- Setting up native autocompletion for LSP
-- AUG 05, 2025 (Marco Peluso)

vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		if client then
			if client:supports_method("textDocument/completion") then
				vim.opt.completeopt = { "menu", "menuone", "noinsert", "noselect", "fuzzy", "popup" }
				vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
				vim.keymap.set("i", "<C-Space>", function()
					vim.lsp.completion.get()
				end)
			end
		end
	end,
})
