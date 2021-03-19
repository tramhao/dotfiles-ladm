return function()

local map = function(type, key, value)
    vim.api.nvim_buf_set_keymap(0,type,key,value,{noremap = true, silent = true});
end
map('n','<leader>ff','<cmd>lua require("telescope.builtin").find_files()<cr>')
map('n','<leader>fg','<cmd>lua require("telescope.builtin").live_grep()<cr>')
map('n','<leader>fb','<cmd>lua require("telescope.builtin").buffers()<cr>')
map('n','<leader>fh','<cmd>lua require("telescope.builtin").help_tags()<cr>')
end
