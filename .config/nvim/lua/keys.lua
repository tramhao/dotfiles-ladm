local utils = require("utils")
vim.api.nvim_command("command! TSRehighlight :write | edit | TSBufEnable highlight")

local opts = { noremap = true, silent = true }

-- vim.api.nvim_set_keymap('t', '<Esc>', '<C-\\><C-n>', opts)
-- vim.api.nvim_set_keymap('n', '<Leader>n', ':noh<CR>', opts)

-- vim.cmd('au FileType cpp ia <buffer> itn int')

vim.api.nvim_set_keymap("c", "W!", "silent! execute 'w !doas tee > /dev/null %' <bar> edit!", { silent = false })
-- vim.api.nvim_set_keymap("c", "W!", "execute 'silent! w !doas tee > /dev/null %' <bar> edit!", { silent = false })
vim.api.nvim_set_keymap("i", "jk", "<Esc>", opts)
vim.api.nvim_set_keymap("i", "kj", "<Esc>", opts)
vim.api.nvim_set_keymap("i", "ii", "<Esc>", opts)
vim.api.nvim_set_keymap("v", "<", "<gv", opts)
vim.api.nvim_set_keymap("v", ">", ">gv", opts)
vim.api.nvim_set_keymap("n", "<Leader>o", "o<Esc>^Da", opts)
vim.api.nvim_set_keymap("n", "<Leader>O", "O<Esc>^Da", opts)

-------------------- MAPPINGS ------------------------------
utils.map("", "<leader>c", '"+y') -- Copy to clipboard in normal, visual, select and operator modes
utils.map("i", "<C-u>", "<C-g>u<C-u>") -- Make <C-u> undo-friendly
utils.map("i", "<C-w>", "<C-g>u<C-w>") -- Make <C-w> undo-friendly

-- <Tab> to navigate the completion menu
-- utils.map("i", "<S-Tab>", 'pumvisible() ? "\\<C-p>" : "\\<Tab>"', { expr = true })
-- utils.map("i", "<Tab>", 'pumvisible() ? "\\<C-n>" : "\\<Tab>"', { expr = true })

utils.map("n", "<C-l>", "<cmd>noh<CR>") -- Clear highlights
utils.map("n", "<leader>o", "m`o<Esc>``") -- Insert a newline in normal mode

-- better window movement
utils.map("n", "<C-h>", "<C-w>h", { silent = true })
utils.map("n", "<C-j>", "<C-w>j", { silent = true })
utils.map("n", "<C-k>", "<C-w>k", { silent = true })
utils.map("n", "<C-l>", "<C-w>l", { silent = true })

-- no hl
utils.map("n", "<Leader>h", ":set hlsearch!<CR>", { silent = true })

-- explorer
vim.api.nvim_set_keymap("n", "<Leader>e", ":NvimTreeToggle<CR>", { noremap = true, silent = true })

-- TODO fix this
-- Terminal window navigation
vim.cmd([[
  tnoremap <C-h> <C-\><C-N><C-w>h
  tnoremap <C-j> <C-\><C-N><C-w>j
  tnoremap <C-k> <C-\><C-N><C-w>k
  tnoremap <C-l> <C-\><C-N><C-w>l
  inoremap <C-h> <C-\><C-N><C-w>h
  inoremap <C-j> <C-\><C-N><C-w>j
  inoremap <C-k> <C-\><C-N><C-w>k
  inoremap <C-l> <C-\><C-N><C-w>l
  tnoremap <Esc> <C-\><C-n>
]])

-- TODO fix this
-- resize with arrows
vim.cmd([[
  nnoremap <silent> <C-Up>    :resize -2<CR>
  nnoremap <silent> <C-Down>  :resize +2<CR>
  nnoremap <silent> <C-Left>  :vertical resize -2<CR>
  nnoremap <silent> <C-Right> :vertical resize +2<CR>
]])

-- Tab switch buffer
utils.map("n", "<TAB>", ":bnext<CR>", { silent = true })
utils.map("n", "<S-TAB>", ":bprevious<CR>", { silent = true })

-- Move selected line / block of text in visual mode
utils.map("x", "K", ":move '<-2<CR>gv-gv", { silent = true })
utils.map("x", "J", ":move '>+1<CR>gv-gv", { silent = true })

-- Better nav for omnicomplete
vim.cmd('inoremap <expr> <c-j> ("\\<C-n>")')
vim.cmd('inoremap <expr> <c-k> ("\\<C-p>")')

-- TAB Complete
-- vim.api.nvim_set_keymap('i', '<expr><TAB>', 'pumvisible() ? \"\\<C-n>\" : \"\\<TAB>\"', { noremap = true, silent = true })

vim.cmd([[
map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)
map <leader>n <Plug>(miniyank-cycle)
map <leader>N <Plug>(miniyank-cycleback)
]])
