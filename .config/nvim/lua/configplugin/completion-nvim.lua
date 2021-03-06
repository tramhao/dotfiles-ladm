return function ()

-- vim.cmd("autocmd BufEnter * lua require'completion'.on_attach()")
vim.g.completion_chain_complete_list = {
    {
        -- complete_items = { "snippet", "buffers", "path"}
        -- complete_items = {"lsp", "snippet", "buffers", "path"}
        complete_items = {"lsp", "snippet", "buffers" }
    },
    {
        mode = "<c-p>"
    },
    {
       mode = "<c-n>"
    }
}

vim.g.completion_enable_snippet = "vim-vsnip"
vim.g.completion_matching_ignore_case = true
-- vim.g.completion_auto_change_source = 1
vim.cmd([[let g:completion_confirm_key = "\<C-y>"]])

vim.g.completion_items_priority = {
    Field = 5,
    Function = 7,
    Module = 7,
    Variables = 7,
    Method = 10,
    Interfaces = 5,
    Constant = 5,
    Class = 5,
    Keyword = 4,
    UltiSnips = 1,
    ["vim-vsnip"] = 5,
    Buffers = 1,
    TabNine = 0,
    File = 0
}
-- local function t(str)
--     return vim.api.nvim_replace_termcodes(str, true, true, true)
-- end

-- function _G.smart_tab()
--     return vim.fn.pumvisible() == 1 and t'<C-n>' or t'<Tab>'
-- end
-- function _G.smart_stab()
--     return vim.fn.pumvisible() == 1 and t'<C-p>' or t'<S-Tab>'
-- end

-- vim.api.nvim_set_keymap('i', '<Tab>', 'v:lua.smart_tab()', {expr = true, noremap = true})
-- vim.api.nvim_set_keymap('i', '<S-Tab>', 'v:lua.smart_stab()', {expr = true, noremap = true})


end

