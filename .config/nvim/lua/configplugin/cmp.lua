return function()
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
			["<C-Space>"] = cmp.mapping.complete(),
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
			-- ["<Tab>"] = cmp.mapping(function(fallback)
			-- 	if vim.fn.pumvisible() == 1 then
			-- 		vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-n>", true, true, true), "n")
			-- 	elseif luasnip.expand_or_jumpable() then
			-- 		vim.fn.feedkeys(
			-- 			vim.api.nvim_replace_termcodes("<Plug>luasnip-expand-or-jump", true, true, true),
			-- 			""
			-- 		)
			-- 	else
			-- 		fallback()
			-- 	end
			-- end, {
			-- 	"i",
			-- 	"s",
			-- }),
			-- ["<S-Tab>"] = cmp.mapping(function(fallback)
			-- 	if vim.fn.pumvisible() == 1 then
			-- 		vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<C-p>", true, true, true), "n")
			-- 	elseif luasnip.jumpable(-1) then
			-- 		vim.fn.feedkeys(vim.api.nvim_replace_termcodes("<Plug>luasnip-jump-prev", true, true, true), "")
			-- 	else
			-- 		fallback()
			-- 	end
			-- end, {
			-- 	"i",
			-- 	"s",
			-- }),
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
		formatting = {
			format = function(entry, vim_item)
				local icons = require("lsp.kind").icons
				vim_item.kind = icons[vim_item.kind]
				vim_item.menu = ({
					nvim_lsp = "(LSP)",
					emoji = "(Emoji)",
					path = "(Path)",
					calc = "(Calc)",
					cmp_tabnine = "(Tabnine)",
					vsnip = "(Snippet)",
					luasnip = "(Snippet)",
					buffer = "(Buffer)",
				})[entry.source.name]
				vim_item.dup = ({
					buffer = 1,
					path = 1,
					nvim_lsp = 0,
				})[entry.source.name] or 0
				return vim_item
			end,
		},
		documentation = {
			border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
		},
	})

	-- SET SNIPPETS PATH
	-- vim.g.vsnip_snippet_dir = vim.fn.stdpath("config") .. "/snippets"
	-- vim.g.vsnip_filetypes = {
	-- 	javascriptreact = { "javascript", "html" },
	-- 	typescriptreact = { "typescript", "html" },
	-- }

	-- Set completeopt to have a better completion experience
	vim.o.completeopt = "menu,menuone,noselect"
	-- api.nvim_command('set completeopt+=menu,longest,menuone,noinsert,noselect') --> This cuases small error with compe, might be noinsert

	-- The above mapping will change the behavior of the <Enter> key when the popup menu is visible. In that case the Enter key will simply select the highlighted menu item, just as <C-Y> does. Does not seem to be neccessary right now with my config but leaving as inspo
	--api.nvim_command('inoremap <expr> <CR> pumvisible() ? "\\<C-y>" : "\\<C-g>u\\<CR>"')

	--" Avoid showing message extra message when using completion
	vim.api.nvim_command("set shortmess+=c")

	-- CONFIGURES ICONS NEXT TO COMPLETION ITEMS FOR LSP
	-- HOW CAN WE ADD BUFFER ICONS?
	vim.lsp.protocol.CompletionItemKind = {
		" Text", -- = 1
		"ƒ Method", -- = 2;
		" Function", -- = 3;
		" Constructor", -- = 4;
		"ƒ Field", -- = 5;
		" Variable", -- = 6;
		" Class", -- = 7;
		"ﰮ Interface", -- = 8;
		" Module", -- = 9;
		" Property", -- = 10;
		" Unit", -- = 11;
		" Value", -- = 12;
		"了Enum", -- = 13;
		" Keyword", -- = 14;
		"﬌ Snippet", -- = 15;
		" Color", -- = 16;
		" File", -- = 17;
		"Reference", -- = 18;
		" Folder", -- = 19;
		" EnumMember", -- = 20;
		" Constant", -- = 21;
		" Struct", -- = 22;
		"Event", -- = 23;
		"Operator", -- = 24;
		"TypeParameter", -- = 25;
	}
end
