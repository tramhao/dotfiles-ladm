-- Example configuations here: https://github.com/mattn/efm-langserver
-- python
local flake8 = {
    LintCommand = "flake8 --ignore=E501 --stdin-display-name ${INPUT} -",
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"}
}
local isort = {formatCommand = "isort --quiet -", formatStdin = true}
local yapf = {formatCommand = "yapf --quiet", formatStdin = true}
local black = {formatCommand = "black --quiet - ", formatStdin = true}

-- if O.python.linter == 'flake8' then table.insert(python_arguments, flake8) end

-- if O.python.isort then table.insert(python_arguments, isort) end

-- if O.python.formatter == 'yapf' then
--     table.insert(python_arguments, yapf)
-- elseif O.python.formatter == 'black' then
--     table.insert(python_arguments, black)
-- end

-- lua
local luaFormat = {
    -- formatCommand = "lua-format -i",
    formatCommand = "lua-format -i --no-keep-simple-function-one-line --column-limit=120",
    formatStdin = true
}
-- JavaScript/React/TypeScript
local prettier = {formatCommand = "./node_modules/.bin/prettier --stdin-filepath ${INPUT}", formatStdin = true}

local prettier_yaml = {formatCommand = "prettier --stdin-filepath ${INPUT}", formatStdin = true}

local eslint = {
    lintCommand = "./node_modules/.bin/eslint -f unix --stdin --stdin-filename ${INPUT}",
    lintIgnoreExitCode = true,
    lintStdin = true,
    lintFormats = {"%f:%l:%c: %m"},
    formatCommand = "./node_modules/.bin/eslint --fix-to-stdout --stdin --stdin-filename=${INPUT}",
    formatStdin = true
}

local shellcheck = {
    LintCommand = 'shellcheck -f gcc -x',
    lintFormats = {'%f:%l:%c: %trror: %m', '%f:%l:%c: %tarning: %m', '%f:%l:%c: %tote: %m'}
}

local shfmt = {formatCommand = 'shfmt -ci -s -bn', formatStdin = true}

-- require"configplugin.lsp".efm.setup {
require"lspconfig".efm.setup {
    -- init_options = {initializationOptions},
    -- on_attach = require'lsp'.common_on_attach,
    init_options = {documentFormatting = true, codeAction = false},
    -- filetypes = {"lua", "javascriptreact", "javascript", "sh", "html", "css", "json", "yaml"},
    filetypes = {"lua", "python", "javascriptreact", "javascript", "sh", "html", "css", "json", "yaml"},
    settings = {
        rootMarkers = {".git/"},
        languages = {
            lua = {luaFormat},
            python = {flake8, isort, yapf, black},
            javascriptreact = {prettier, eslint},
            javascript = {prettier, eslint},
            sh = {shellcheck, shfmt},
            html = {prettier},
            css = {prettier},
            json = {prettier},
            yaml = {prettier_yaml}
        }
    }
}

-- vim.cmd("autocmd BufWritePre *.lua lua vim.lsp.buf.formatting()")
vim.cmd("autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 100)")
vim.cmd("autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 100)")
local utils = require('utils')
utils.map('n', '<leader>fm', '<cmd>lua vim.lsp.buf.formatting()<CR>')

-- TODO turn these eslint and prettier examples into something good
-- TODO also shellcheck and shell formatting
-- Also find way to toggle format on save
-- maybe this will help: https://superuser.com/questions/439078/how-to-disable-autocmd-or-augroup-in-vim
