require("conform").setup({
    formatters_by_ft = {
        go = { "gofmt" },
        nix = { "nixfmt" }
    },
    format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
    }
})
