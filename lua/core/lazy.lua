-- Setup LazyNvim as the Package Manager
--
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- If lazy.nvim is not installed
-- Install it from github.com
if not vim.loop.fs_stat(lazypath) then
	-- bootstrap lazy.nvim
	-- stylua: ignore
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end

vim.opt.rtp:prepend(vim.env.LAZY or lazypath)

require("lazy").setup({
	spec = {
		{ import = "plugins.aesthetics" },
		{ import = "plugins.colorschemes" },
		{ import = "plugins.editing" },
		{ import = "plugins.git" },
		{ import = "plugins.languages" },
	},

	defaults = {
		lazy = false,
		version = false,
	},

	checker = {
		enabled = true,
		-- frequency = 604800,
	},
})
