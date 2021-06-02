require'lspconfig'.rust_analyzer.setup {
    cmd = {"rust-analyzer"},
    on_init = require'lsp'.common_on_init,
    on_attach = require'lsp'.common_on_attach,
    capabilities = require'lsp'.capabilities
}

-- vim.cmd("autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}")
-- Enable type inlay hints
vim.cmd(
    "autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *.rs :lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = 'Comment', enabled = {'TypeHint', 'ChainingHint', 'ParameterHint'} }")
