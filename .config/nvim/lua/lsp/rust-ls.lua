-- require'lspconfig'.rust_analyzer.setup {
--     cmd = {"rust-analyzer"},
--     on_init = require'lsp'.common_on_init,
--     on_attach = require'lsp'.common_on_attach,
--     capabilities = require'lsp'.capabilities,
--     settings = {
--         ["rust-analyzer"] = {
--             assist = {importGranularity = "module", importPrefix = "by_self"},
--             cargo = {loadOutDirsFromCheck = true},
--             -- procMacro = {enable = false}
--             procMacro = {enable = true}
--         }
--     }
-- }
local opts = {
    tools = { -- rust-tools options
        autoSetHints = true,
        hover_with_actions = true,
        runnables = {use_telescope = true},
        inlay_hints = {
            show_parameter_hints = true,
            parameter_hints_prefix = "<-",
            other_hints_prefix = "=>",
            max_len_align = false,
            max_len_align_padding = 1,
            right_align = false,
            right_align_padding = 7
        },
        hover_actions = {
            border = {
                {"╭", "FloatBorder"}, {"─", "FloatBorder"}, {"╮", "FloatBorder"}, {"│", "FloatBorder"},
                {"╯", "FloatBorder"}, {"─", "FloatBorder"}, {"╰", "FloatBorder"}, {"│", "FloatBorder"}
            }
        }
    },

    -- all the opts to send to nvim-lspconfig
    -- these override the defaults set by rust-tools.nvim
    -- see https://github.com/neovim/nvim-lspconfig/blob/master/CONFIG.md#rust_analyzer
    server = {
        cmd = {"/home/tramhao/.local/share/nvim/lspinstall/rust/rust-analyzer"},
        on_init = require'lsp'.common_on_init,
        on_attach = require("lsp").common_on_attach,
        capabilities = require'lsp'.capabilities,

        assist = {importGranularity = "module", importPrefix = "by_self"},
        cargo = {loadOutputiDirs = false, loadOutDirsFromCheck = true}
    } -- rust-analyer options
}

require('rust-tools').setup(opts)
vim.cmd("autocmd BufWritePre *.rs lua vim.lsp.buf.formatting_sync()")
vim.cmd("autocmd BufEnter *.rs :lua require'rust-analyzer'.inlay_hints{}")
-- vim.cmd("autocmd BufWrite *.rs :Autoformat")
-- vim.cmd("let g:rustfmt_autosave = 1")
-- vim.g.rustfmt_autosave = 1
-- vim.g.rustfmt_options = "overwrite"
-- vim.cmd("autocmd BufEnter,BufWinEnter,TabEnter *.rs :lua require'lsp_extensions'.inlay_hints{}")
-- Enable type inlay hints

-- vim.cmd(
-- "autocmd CursorMoved,InsertLeave,BufEnter,BufWinEnter,TabEnter,BufWritePost *.rs :lua require'lsp_extensions'.inlay_hints{ prefix = '', highlight = 'Comment', enabled = {'TypeHint', 'ChainingHint', 'ParameterHint'} }")
