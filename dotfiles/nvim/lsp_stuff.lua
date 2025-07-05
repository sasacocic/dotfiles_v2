local lspconfig = require('lspconfig')


-- I could set these to run on file type, but I think it would mean each time
-- I open up one of those files then it would run right?
lspconfig.pyright.setup {}
lspconfig.gopls.setup {}
-- lspconfig.clangd.setup{} # doesn't really work - need to figure out why
lspconfig.lua_ls.setup {}
lspconfig.nixd.setup {}
lspconfig.html.setup {}


vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(event)
        -- set gd to be jump to definition
        vim.keymap.set("n", "gd", require("telescope.builtin").lsp_definitions,
            { buffer = event.buf, desc = 'Lsp: ' .. '[G]oto [D]efinition' })
    end
})
