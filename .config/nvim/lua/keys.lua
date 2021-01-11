
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

