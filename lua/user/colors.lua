local scheme = "frontier"

local scheme_true24 = scheme
local scheme_256 = scheme

local done = nil

-- if vim.g.termguicolors then
if vim.env.COLORTERM == "truecolor" then
	done, _ = pcall(vim.cmd.colorscheme, scheme_true24)
elseif string.find(vim.env.TERM, "xterm") == 1 then
	done, _ = pcall(vim.cmd.colorscheme, scheme_256)
end

if not done then
	done, _ = pcall(vim.cmd.colorscheme, "default")
end
