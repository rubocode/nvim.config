local scheme_true24 = "frontier"
local scheme_256 = "frontier"

if vim.g.termguicolors then
	if vim.env.COLORTERM == "truecolor" then
		local ok, _ = pcall(vim.cmd, "colorscheme " .. scheme_true24)
	end
elseif vim.env.TERM == "xterm-256color" then
	local ok, _ = pcall(vim.cmd, "colorscheme " .. scheme_256)
else
	local ok, _ = pcall(vim.cmd, "colorscheme default")
end
