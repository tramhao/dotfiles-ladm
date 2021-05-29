require'lspconfig'.rust_analyzer.setup {
    cmd = {"rust-analyzer"},
    on_init = require'lsp'.common_on_init,
    on_attach = require'lsp'.common_on_attach,
    capabilities = require'lsp'.capabilities
}
