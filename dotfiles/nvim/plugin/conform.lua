
require("conform").setup({
	formatters_by_ft = {
		go = { "gofmt" },
	},
	format_on_save = {
		timeout_ms = 500,
		lsp_format = "fallback",
	}
})
