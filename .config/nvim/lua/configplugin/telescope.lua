return function()
	local utils = require("utils")
	local actions = require("telescope.actions")
	local previewers = require("telescope.previewers")
	local Job = require("plenary.job")
	local new_maker = function(filepath, bufnr, opts)
		filepath = vim.fn.expand(filepath)
		Job
			:new({
				command = "file",
				args = { "--mime-type", "-b", filepath },
				on_exit = function(j)
					local mime_type = vim.split(j:result()[1], "/")[1]
					if mime_type == "text" then
						previewers.buffer_previewer_maker(filepath, bufnr, opts)
					else
						-- maybe we want to write something to the buffer here
						vim.schedule(function()
							vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "BINARY" })
						end)
					end
				end,
			})
			:sync()
	end

	utils.map("n", "<leader>ff", '<cmd>lua require("telescope.builtin").find_files()<cr>')
	utils.map("n", "<leader>fg", '<cmd>lua require("telescope.builtin").live_grep()<cr>')
	utils.map("n", "<leader>fb", '<cmd>lua require("telescope.builtin").buffers()<cr>')
	utils.map("n", "<leader>fh", '<cmd>lua require("telescope.builtin").help_tags()<cr>')
	require("telescope").setup({
		defaults = {
			file_ignore_patterns = { "node_modules/.*", ".git/.*", ".neuron/*", "/target/*" },
			mappings = {
				i = {
					["<esc>"] = actions.close,
				},
			},
			buffer_previewer_maker = new_maker,
			layout_config = {
				horizontal = { width = 0.9 },
				preview_width = 0.45,
				-- prompt_position = "top",
			},
		},
	})
end
