local scheme_true24 = 'khold' 
local scheme_256 = 'two-firewatch'

if (vim.env.COLORTERM == "truecolor") then
	local ok, err = pcall(vim.cmd, 'colorscheme ' .. scheme_true24)
elseif (vim.env.TERM == "xterm-256color") then
	local ok, err = pcall(vim.cmd, 'colorscheme ' .. scheme_256)
else
	local ok, err = pcall(vim.cmd, 'colorscheme default')
end
