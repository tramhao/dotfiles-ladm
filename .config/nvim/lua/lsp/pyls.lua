require('lspconfig').pyright.setup {
    on_init = require'lsp'.common_on_init,
    on_attach = require'lsp'.common_on_attach,
    capabilities = require'lsp'.capabilities,
    handlers = {
        ["textDocument/publishDiagnostics"] = vim.lsp.with(vim.lsp.diagnostic.on_publish_diagnostics, {
            virtual_text = false,
            signs = false,
            underline = false,
            update_in_insert = true
        })
    },
    settings = {python = {analysis = {typeCheckingMode = "off", autoSearchPaths = true, useLibraryCodeForTypes = true}}}
}
-- require('lspconfig').pyls.setup {
--     on_init = require'lsp'.common_on_init,
--     on_attach = require'lsp'.common_on_attach,
--     capabilities = require'lsp'.capabilities
-- }

vim.cmd("autocmd BufWritePre *.py lua vim.lsp.buf.formatting_sync(nil, 1000)")
