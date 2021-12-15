return function()
	require("lualine").setup({
		options = {
			theme = "dracula",
			icons_enabled = true,
			component_separators = { "", "" },
			section_separators = { "", "" },
			disabled_filetypes = {},
		},
		sections = {
			lualine_a = { "mode" },
			lualine_b = { "branch" },
			lualine_c = {
				{
					"diagnostics",
					sources = { "nvim_diagnostic" },
					sections = { "error", "warn", "info" },
				},
				"filename",
			},
			lualine_x = { "encoding", "fileformat", "filetype" },
			lualine_y = { "progress", "location" },
			lualine_z = {
				function()
					return require("lsp-status").status()
				end,
			},
			-- lualine_diagnostics = {  }
		},
		inactive_sections = {
			lualine_a = {},
			lualine_b = {},
			lualine_c = { "filename" },
			lualine_x = { "location" },
			lualine_y = {},
			lualine_z = {},
		},
		-- lualine.extensions = { 'fzf' }
	})
	-- lualine.setup()
end
