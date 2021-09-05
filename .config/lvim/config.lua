--[[
lvim is the global options object

Linters should be
filled in as strings with either
a global executable or a path to
an executable
]]
-- THESE ARE EXAMPLE CONFIGS FEEL FREE TO CHANGE TO WHATEVER YOU WANT

-- general
local CACHE_PATH = "~/.cache/nvim"
local indent = 4
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "monokai"

lvim.transparent_window = true

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
local _time = os.date("*t")
if _time.hour >= 21 and _time.hour <= 24 then
	lvim.colorscheme = "onedarker"
end
if _time.hour >= 0 and _time.hour <= 7 then
	lvim.colorscheme = "onedarker"
end
vim.opt.backup = false -- creates a backup file
vim.opt.clipboard = "unnamedplus" -- allows neovim to access the system clipboard
vim.opt.cmdheight = 1 -- more space in the neovim command line for displaying messages
vim.opt.colorcolumn = "99999" -- fixes indentline for now
-- vim.opt.completeopt = { "menuone" "noselect" }
vim.opt.completeopt = { "menuone", "noselect" }
vim.opt.conceallevel = 0 -- so that `` is visible in markdown files
vim.opt.cursorline = true
vim.opt.encoding = "utf-8"
-- vim.opt.fileencoding = "utf-8" -- the encoding written to a file
vim.opt.fileencodings = "utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1"
-- vim.opt.foldmethod = "manual" -- folding set to "expr" for treesitter based folding
-- vim.opt.foldexpr = "" -- set to "nvim_treesitter#foldexpr()" for treesitter based folding
vim.opt.foldmethod = "expr"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 5
-- vim.opt.guifont = "monospace:h17" -- the font used in graphical neovim applications
vim.opt.guifont = "FiraCode Nerd Font:h13"
vim.opt.hidden = true -- required to keep multiple buffers and open multiple buffers
vim.opt.hlsearch = true -- highlight all matches on previous search pattern
vim.opt.ignorecase = true -- ignore case in search patterns
vim.opt.incsearch = true
vim.opt.laststatus = 2
vim.opt.mouse = "a" -- allow the mouse to be used in neovim
vim.opt.pumheight = 10 -- pop up menu height
vim.opt.ruler = true
vim.opt.showmode = false -- we don't need to see things like -- INSERT -- anymore
vim.opt.showtabline = 2 -- always show tabs
vim.opt.smartcase = true -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.splitbelow = true -- force all horizontal splits to go below current window
vim.opt.splitright = true -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false -- creates a swapfile
vim.opt.termguicolors = true -- set term gui colors (most terminals support this)
vim.opt.timeoutlen = 300 -- time to wait for a mapped sequence to complete (in milliseconds)
vim.opt.title = true -- set the title of window to the value of the titlestring
vim.opt.titlestring = "%<%F%=%l/%L - nvim" -- what the title of the window will be set to
vim.opt.undodir = CACHE_PATH .. "/undo" -- set an undo directory
vim.opt.undofile = true -- enable persistent undo
vim.opt.updatetime = 300 -- faster completion
vim.opt.writebackup = false -- if a file is being edited by another program (or was written to file while editing with another program) it is not allowed to be edited
vim.opt.expandtab = true -- convert tabs to spaces
vim.opt.shiftwidth = indent -- the number of spaces inserted for each indentation
vim.opt.tabstop = indent -- insert 2 spaces for a tab
vim.opt.cursorline = true -- highlight the current line
vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = true -- set relative numbered lines
vim.opt.numberwidth = 4 -- set number column width to 2 {default 4}
vim.opt.signcolumn = "yes" -- always show the sign column otherwise it would shift the text each time
vim.opt.wrap = true -- display lines as one long line
vim.opt.spell = false
vim.opt.spelllang = "en"
vim.opt.scrolloff = 5 -- is one of my fav
vim.opt.sidescrolloff = 8
vim.g.dashboard_enable_session = 0
vim.g.dashboard_disable_statusline = 0
vim.opt.pumblend = 10
vim.opt.joinspaces = false
vim.opt.list = true

lvim.line_wrap_cursor_movement = false
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
vim.api.nvim_set_keymap("c", "w!!", "w !sudo tee %", { silent = false })
-- unmap a default keymapping
-- lvim.keys.normal_mode["<C-Up>"] = ""
-- edit a default keymapping
-- lvim.keys.normal_mode["<C-q>"] = ":q<cr>"

-- Change Telescope navigation to use j and k for navigation and n and p for history in both input and normal mode.
-- lvim.builtin.telescope.on_config_done = function()
--   local actions = require "telescope.actions"
--   -- for input mode
--   lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
--   lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
--   lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
--   lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
--   -- for normal mode
--   lvim.builtin.telescope.defaults.mappings.n["<C-j>"] = actions.move_selection_next
--   lvim.builtin.telescope.defaults.mappings.n["<C-k>"] = actions.move_selection_previous
-- end

-- Use which-key to add extra bindings with the leader-key prefix
-- lvim.builtin.which_key.mappings["P"] = { "<cmd>Telescope projects<CR>", "Projects" }
-- lvim.builtin.which_key.mappings["t"] = {
--   name = "+Trouble",
--   r = { "<cmd>Trouble lsp_references<cr>", "References" },
--   f = { "<cmd>Trouble lsp_definitions<cr>", "Definitions" },
--   d = { "<cmd>Trouble lsp_document_diagnostics<cr>", "Diagnosticss" },
--   q = { "<cmd>Trouble quickfix<cr>", "QuickFix" },
--   l = { "<cmd>Trouble loclist<cr>", "LocationList" },
--   w = { "<cmd>Trouble lsp_workspace_diagnostics<cr>", "Diagnosticss" },
-- }

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.dashboard.active = true
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.side = "left"
lvim.builtin.nvimtree.show_icons.git = 0
-- -- Customization
-- -- =========================================
-- lvim.builtin.lastplace = { active = false } -- change to false if you are jumping to future
-- lvim.builtin.tabnine = { active = true } -- change to false if you don't like tabnine
-- lvim.builtin.persistence = { active = true } -- change to false if you don't want persistence
-- lvim.builtin.presence = { active = false } -- change to true if you want discord presence
-- lvim.builtin.orgmode = { active = false } -- change to true if you want orgmode.nvim
-- lvim.builtin.dap.active = false -- change this to enable/disable debugging
-- lvim.builtin.fancy_statusline = { active = true } -- change this to enable/disable fancy statusline
-- require("user.builtin").config()
--
-- -- StatusLine
-- -- =========================================
-- if lvim.builtin.fancy_statusline.active then
--   require("user.lualine").config()
-- end
--
-- -- Debugging
-- -- =========================================
-- if lvim.builtin.dap.active then
--   require("user.dap").config()
-- end
-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = "maintained"
lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enabled = true

lvim.lang.lua.formatters = { { exe = "stylua" } }
lvim.lang.lua.linters = { { exe = "selene" } }
lvim.lsp.override = { "rust" }
-- lvim.lang.rust.formatters = {{exe = "rustfmt"}}
lvim.lsp.diagnostics.virtual_text = false
lvim.builtin.telescope.on_config_done = function()
	local actions = require("telescope.actions")
	lvim.builtin.telescope.defaults.mappings.i["<C-j>"] = actions.move_selection_next
	lvim.builtin.telescope.defaults.mappings.i["<C-k>"] = actions.move_selection_previous
	lvim.builtin.telescope.defaults.mappings.i["<C-n>"] = actions.cycle_history_next
	lvim.builtin.telescope.defaults.mappings.i["<C-p>"] = actions.cycle_history_prev
end
-- generic LSP settings
-- you can set a custom on_attach function that will be used for all the language servers
-- See <https://github.com/neovim/nvim-lspconfig#keybindings-and-completion>
-- lvim.lsp.on_attach_callback = function(client, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--   --Enable completion triggered by <c-x><c-o>
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end
-- you can overwrite the null_ls setup table (useful for setting the root_dir function)
-- lvim.lsp.null_ls.setup = {
--   root_dir = require("lspconfig").util.root_pattern("Makefile", ".git", "node_modules"),
-- }
-- or if you need something more advanced
-- lvim.lsp.null_ls.setup.root_dir = function(fname)
--   if vim.bo.filetype == "javascript" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "node_modules")(fname)
--       or require("lspconfig/util").path.dirname(fname)
--   elseif vim.bo.filetype == "php" then
--     return require("lspconfig/util").root_pattern("Makefile", ".git", "composer.json")(fname) or vim.fn.getcwd()
--   else
--     return require("lspconfig/util").root_pattern("Makefile", ".git")(fname) or require("lspconfig/util").path.dirname(fname)
--   end
-- end

-- set a formatter if you want to override the default lsp one (if it exists)
-- lvim.lang.python.formatters = {
--   {
--     exe = "black",
--   }
-- }
-- set an additional linter
-- lvim.lang.python.linters = {
--   {
--     exe = "flake8",
--   }
-- }

-- Additional Plugins
-- lvim.plugins = {
--     {"folke/tokyonight.nvim"},
--     {
--       "folke/trouble.nvim",
--       cmd = "TroubleToggle",
--     },
-- }

lvim.plugins = {
	{ "tanvirtin/nvim-monokai" },
	{
		"folke/trouble.nvim",
		cmd = "TroubleToggle",
	},
	{
		"simrat39/rust-tools.nvim",
		config = function()
			require("user.rust_tools").config()
		end,
		ft = { "rust", "rs" },
	},
}

-- Autocommands (https://neovim.io/doc/user/autocmd.html)
-- lvim.autocommands.custom_groups = {
--   { "BufWinEnter", "*.lua", "setlocal ts=8 sw=8" },
-- }
