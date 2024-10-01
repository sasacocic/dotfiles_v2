local lspconfig = require('lspconfig')

lspconfig.pyright.setup{}
lspconfig.gopls.setup{}
-- lspconfig.clangd.setup{} # doesn't really work - need to figure out why
lspconfig.lua_ls.setup{}
