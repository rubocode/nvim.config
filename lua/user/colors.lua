local scheme_true24 = "uniwatch-frontier"
local scheme_256 = "uniwatch-frontier"

local done = nil

if vim.g.termguicolors then
	if vim.env.COLORTERM == "truecolor" then
		done, _ = pcall(vim.cmd.colorscheme, scheme_true24)
	end
elseif vim.env.TERM == "xterm-256color" then
	done, _ = pcall(vim.cmd.colorscheme, scheme_256)
end

if not done then
	done, _ = pcall(vim.cmd.colorscheme, "default")
end
