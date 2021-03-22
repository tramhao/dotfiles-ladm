-- TODO figure out why this don't work
vim.fn.sign_define("LspDiagnosticsSignError",
                   {texthl = "LspDiagnosticsSignError", text = "", numhl = "LspDiagnosticsSignError"})
vim.fn.sign_define("LspDiagnosticsSignWarning",
                   {texthl = "LspDiagnosticsSignWarning", text = "", numhl = "LspDiagnosticsSignWarning"})
vim.fn.sign_define("LspDiagnosticsSignInformation",
                   {texthl = "LspDiagnosticsSignInformation", text = "", numhl = "LspDiagnosticsSignInformation"})
vim.fn.sign_define("LspDiagnosticsSignHint",
                   {texthl = "LspDiagnosticsSignHint", text = "", numhl = "LspDiagnosticsSignHint"})

vim.cmd('nnoremap <silent> ca :Lspsaga code_action<CR>')
vim.cmd('nnoremap <silent> K :Lspsaga hover_doc<CR>')
-- vim.cmd('nnoremap <silent> <C-k> <cmd>lua vim.lsp.buf.signature_help()<CR>')
vim.cmd('nnoremap <silent> <C-p> :Lspsaga diagnostic_jump_prev<CR>')
vim.cmd('nnoremap <silent> <C-n> :Lspsaga diagnostic_jump_next<CR>')
-- scroll down hover doc or scroll in definition preview
vim.cmd('nnoremap <silent> <C-f> <cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(1)<CR>')
-- scroll up hover doc
vim.cmd('nnoremap <silent> <C-b> <cmd>lua require(\'lspsaga.action\').smart_scroll_with_saga(-1)<CR>')
vim.cmd('command! -nargs=0 LspVirtualTextToggle lua require("lsp/virtual_text").toggle()')

local utils = require('utils')
utils.map('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>')
utils.map('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>')
-- utils.map('n','K','<cmd>lua vim.lsp.buf.hover()<CR>')
utils.map('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>')
utils.map('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<CR>')
utils.map('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>')
utils.map('n', 'gt', '<cmd>lua vim.lsp.buf.type_definition()<CR>')
utils.map('n', '<leader>gw', '<cmd>lua vim.lsp.buf.document_symbol()<CR>')
utils.map('n', '<leader>gW', '<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
utils.map('n', '<leader>ah', '<cmd>lua vim.lsp.buf.hover()<CR>')
utils.map('n', '<leader>af', '<cmd>lua vim.lsp.buf.code_action()<CR>')
utils.map('n', '<leader>ee', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>')
utils.map('n', '<leader>ar', '<cmd>lua vim.lsp.buf.rename()<CR>')
utils.map('n', '<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>')
utils.map('n', '<leader>ai', '<cmd>lua vim.lsp.buf.incoming_calls()<CR>')
utils.map('n', '<leader>ao', '<cmd>lua vim.lsp.buf.outgoing_calls()<CR>')
-- utils.map('n', '<C-n>', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>')
-- utils.map('n', '<C-p>', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>')
--[[ " autoformat
autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.lua lua vim.lsp.buf.formatting_sync(nil, 100) ]]
-- Java
-- autocmd FileType java nnoremap ca <Cmd>lua require('jdtls').code_action()<CR>

local function documentHighlight(client, _)
    -- Set autocommands conditional on server_capabilities
    if client.resolved_capabilities.document_highlight then
        vim.api.nvim_exec([[
      hi LspReferenceRead cterm=bold ctermbg=red guibg=#464646
      hi LspReferenceText cterm=bold ctermbg=red guibg=#464646
      hi LspReferenceWrite cterm=bold ctermbg=red guibg=#464646
      augroup lsp_document_highlight
        autocmd! * <buffer>
        autocmd CursorHold <buffer> lua vim.lsp.buf.document_highlight()
        autocmd CursorMoved <buffer> lua vim.lsp.buf.clear_references()
      augroup END
    ]], false)

    end

end
local lsp_config = {}

lsp_config.capabilities = vim.lsp.protocol.make_client_capabilities()
lsp_config.capabilities.textDocument.completion.completionItem.snippetSupport = true;

function lsp_config.common_on_attach(client, bufnr)
    print("LSP started.");
    documentHighlight(client, bufnr)
end

function lsp_config.common_on_init(client)
    if client.config.flags then client.config.flags.allow_incremental_sync = true end
end

function lsp_config.tsserver_on_attach(client, bufnr)
    lsp_config.common_on_attach(client, bufnr)
    client.resolved_capabilities.document_formatting = false
end

-- Use a loop to conveniently both setup defined servers
-- and map buffer local keybindings when the language server attaches
-- local servers = {"pyright", "tsserver"}
-- for _, lsp in ipairs(servers) do nvim_lsp[lsp].setup {on_attach = on_attach} end
return lsp_config
