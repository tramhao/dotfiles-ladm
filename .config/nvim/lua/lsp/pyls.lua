require('lspconfig').pyright.setup {
    on_init = require'lsp'.common_on_init,
    on_attach = require'lsp'.common_on_attach,
    capabilities = require'lsp'.capabilities
}

require('lspconfig').pyls.setup {
    on_init = require'lsp'.common_on_init,
    on_attach = require'lsp'.common_on_attach,
    capabilities = require'lsp'.capabilities
}

vim.cmd("autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 100)")
