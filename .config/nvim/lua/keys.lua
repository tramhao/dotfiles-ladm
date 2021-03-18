local function map(mode, lhs, rhs, opts)
  local options = {noremap = true}
  if opts then options = vim.tbl_extend('force', options, opts) end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end


vim.api.nvim_command('command! TSRehighlight :write | edit | TSBufEnable highlight')

local opts = {noremap = true, silent = true}

-- vim.api.nvim_set_keymap('n', '<Leader>n', ':noh<CR>', opts)
-- vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', opts)

-- vim.cmd('au FileType cpp ia <buffer> itn int')

vim.api.nvim_set_keymap('c', 'w!!','w !sudo tee %', {silent = false})
vim.api.nvim_set_keymap('i', 'jk','<Esc>', opts)
vim.api.nvim_set_keymap('i', 'kj','<Esc>', opts)
vim.api.nvim_set_keymap('i', 'ii','<Esc>', opts)
vim.api.nvim_set_keymap('v', '<','<gv', opts)
vim.api.nvim_set_keymap('v', '>','>gv', opts)
vim.api.nvim_set_keymap('n', '<Leader>o','o<Esc>^Da', opts)
vim.api.nvim_set_keymap('n', '<Leader>O','O<Esc>^Da', opts)

-------------------- MAPPINGS ------------------------------
map('', '<leader>c', '"+y')       -- Copy to clipboard in normal, visual, select and operator modes
map('i', '<C-u>', '<C-g>u<C-u>')  -- Make <C-u> undo-friendly
map('i', '<C-w>', '<C-g>u<C-w>')  -- Make <C-w> undo-friendly

-- <Tab> to navigate the completion menu
map('i', '<S-Tab>', 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', {expr = true})
map('i', '<Tab>', 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', {expr = true})

map('n', '<C-l>', '<cmd>noh<CR>')    -- Clear highlights
map('n', '<leader>o', 'm`o<Esc>``')  -- Insert a newline in normal mode

-- better window movement
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { silent = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { silent = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { silent = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { silent = true })


