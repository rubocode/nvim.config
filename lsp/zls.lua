-- ZIG LANGUAGE SERVER
-- JUL 31, 2025

local M = {
	cmd = { "zls" },
	filetypes = { "zig", "zir" },
	root_markers = { "zls.json", "build.zig", ".git" },
	workspace_required = false,
}

return M
