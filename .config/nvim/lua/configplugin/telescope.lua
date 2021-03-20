return function()
local utils = require ('utils')
utils.map('n','<leader>ff','<cmd>lua require("telescope.builtin").find_files()<cr>')
utils.map('n','<leader>fg','<cmd>lua require("telescope.builtin").live_grep()<cr>')
utils.map('n','<leader>fb','<cmd>lua require("telescope.builtin").buffers()<cr>')
utils.map('n','<leader>fh','<cmd>lua require("telescope.builtin").help_tags()<cr>')
end
