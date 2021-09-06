-- require'lspconfig'.rust_analyzer.setup {
--     cmd = {"rust-analyzer"},
--     on_init = require'lsp'.common_on_init,
--     on_attach = require'lsp'.common_on_attach,
--     capabilities = require'lsp'.capabilities,
--     settings = {
--         ["rust-analyzer"] = {
--             -- assist = {importGranularity = "module", importPrefix = "by_self"},
--             -- cargo = {loadOutDirsFromCheck = true},
--             -- procMacro = {enable = false}
--             -- procMacro = {enable = true}
--         }
--     }
-- }
local opts = {
    tools = { -- rust-tools options
        autoSetHints = true,
        hover_with_actions = true,
        inlay_hints = {show_parameter_hints = false, parameter_hints_prefix = "", other_hints_prefix = ""}
    },

    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
    server = {cargo = {loadOutputiDirs = false, loadOutDirsFromCheck = false}} -- rust-analyer options
}

require('rust-tools').setup(opts)
vim.cmd("autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync()")
-- vim.cmd("autocmd BufWrite *.rs :Autoformat")
-- vim.cmd("let g:rustfmt_autosave = 1")
vim.g.rustfmt_autosave = 1
vim.g.rustfmt_options = "overwrite"
-- vim.cmd("autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}")
-- Enable type inlay hints

-- vim.cmd(
-- "autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *.rs :lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = 'Comment', enabled = {'TypeHint', 'ChainingHint', 'ParameterHint'} }")
