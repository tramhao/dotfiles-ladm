return function()
	-- Set completeopt to have a better completion experience
	vim.o.completeopt = "menu,menuone,noselect"
	--" Avoid showing message extra message when using completion
	vim.api.nvim_command("set shortmess+=c")
	-- INIT
	local cmp = require("cmp")
	local luasnip = require("luasnip")
	cmp.setup({
		snippet = {
			expand = function(args)
				luasnip.lsp_expand(args.body)
			end,
		},
		mapping = {
			["<C-p>"] = cmp.mapping.select_prev_item(),
			["<C-n>"] = cmp.mapping.select_next_item(),
			["<C-d>"] = cmp.mapping.scroll_docs(-4),
			["<C-f>"] = cmp.mapping.scroll_docs(4),
			-- ["<C-Space>"] = cmp.mapping.complete(),
			["<C-CR>"] = cmp.mapping.complete(),
			["<C-e>"] = cmp.mapping.close(),
			["<CR>"] = cmp.mapping.confirm({
				behavior = cmp.ConfirmBehavior.Replace,
				select = true,
			}),
			-- If you want tab completion :'(
			--  First you have to just promise to read `:help ins-completion`.
			--
			["<Tab>"] = function(fallback)
				if cmp.visible() then
					cmp.select_next_item()
				else
					fallback()
				end
			end,
			["<S-Tab>"] = function(fallback)
				if cmp.visible() then
					cmp.select_prev_item()
				else
					fallback()
				end
			end,
		},
		sources = {
			{ name = "nvim_lsp" },
			{ name = "path" },
			{ name = "luasnip" },
			{ name = "cmp_tabnine" },
			{ name = "nvim_lua" },
			{ name = "buffer" },
			{ name = "calc" },
			{ name = "emoji" },
			{ name = "treesitter" },
			{ name = "crates" },
		},
		-- formatting = {
		-- 	format = function(entry, vim_item)
		-- 		local icons = require("lsp.kind").icons
		-- 		vim_item.kind = icons[vim_item.kind]
		-- 		vim_item.menu = ({
		-- 			nvim_lsp = "(LSP)",
		-- 			emoji = "(Emoji)",
		-- 			path = "(Path)",
		-- 			calc = "(Calc)",
		-- 			cmp_tabnine = "(Tabnine)",
		-- 			vsnip = "(Snippet)",
		-- 			luasnip = "(Snippet)",
		-- 			buffer = "(Buffer)",
		-- 		})[entry.source.name]
		-- 		vim_item.dup = ({
		-- 			buffer = 1,
		-- 			path = 1,
		-- 			nvim_lsp = 0,
		-- 		})[entry.source.name] or 0
		-- 		return vim_item
		-- 	end,
		-- },
		formatting = {
			format = require("lspkind").cmp_format({
				with_text = true,
				maxwidth = 50,
				menu = {
					buffer = "(Buffer)",
					nvim_lsp = "(LSP)",
					luasnip = "(LuaSnip)",
					nvim_lua = "(Lua)",
					latex_symbols = "(Latex)",
					emoji = "(Emoji)",
					path = "(Path)",
					calc = "(Calc)",
					cmp_tabnine = "(Tabnine)",
					vsnip = "(Snippet)",
				},
			}),
		},
		documentation = {
			border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
		},
	})

	require("colorbuddy").setup()
	require("colorbuddy").colorscheme("monokai-soda")
	local Group = require("colorbuddy.group").Group
	local g = require("colorbuddy.group").groups
	local s = require("colorbuddy.style").styles

	Group.new("CmpItemAbbr", g.Special)
	Group.new("CmpItemAbbrDeprecated", g.Error)
	Group.new("ComItemAbbrMatch", g.Special)
	Group.new("CmpItemAbbrMatchFuzzy", g.CmpItemAbbr.fg:dark(), nil, s.italic)
	Group.new("CmpItemKind", g.Special)
	Group.new("CmpItemMenu", g.NonText)
end
