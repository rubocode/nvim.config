vim.lsp.config("*", {
	flags = {
  	debounce_text_changes = 500,
  },
  capabilities = {
  	workspace = {
      didChangeWatchedFiles = {
        dynamicRegistration = true,
        relativePatternSupport = true,
      },
    }
  },
    -- root_dir = require("lspconfig").util.root_pattern('.git'),
    -- root_markers = require("lspconfig").util.root_pattern('.git'),
})
