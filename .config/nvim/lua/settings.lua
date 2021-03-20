local utils = require('utils')

local cmd = vim.cmd -- to execute Vim commands e.g. cmd('pwd')
local g = vim.g -- a table to access global variables
local indent = 4
vim.cmd("au BufWritePost ~/.config/nvim/*.{vim,lua} luafile ~/.config/nvim/init.lua")

-- TODO: Remove when https://github.com/neovim/neovim/pull/13479 lands

g.mapleader = ';'
vim.b.mapleader = ';'
cmd("syntax enable")
cmd("filetype plugin on")
cmd("set path+=**")
cmd("set undofile")
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true
cmd("set iskeyword+=-")
-- vim.o.iskeyword = vim.o.iskeyword .. '-'
vim.o.encoding = 'utf-8'
-- vim.g.fileencodings = 'utf-8,gb2312,gb18030,gbk,ucs-bom,cp936'
vim.g.fileencodings = 'utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1'
-- vim.o.enc = 'utf8'
-- vim.g.fencs = 'utf8,gbk,gb2312,gb18030'
vim.g.ruler = true
vim.g.pumheight = 10
vim.g.cmdheight = 2
vim.g.laststatus = 2
utils.opt('w', 'cursorline', true)
-- opt('w', 'cursorline', true)
-- vim.wo.cursorline = true
vim.g.showtabline = 2
vim.o.mouse = 'a'
vim.o.splitright = true
vim.o.splitbelow = true
vim.o.background = 'dark'
vim.o.termguicolors = true
vim.o.t_Co = "256" -- Support 256 colors
vim.g.rehash256 = 1
-- opt('w', 'conceallevel', 0)
utils.opt('o', 'conceallevel', 0)
-- vim.wo.conceallevel = 0
vim.o.hidden = true
vim.o.updatetime = 300
vim.o.scrolloff = 5
vim.o.sidescrolloff = 5
vim.o.completeopt = 'menu,menuone,noselect'
-- vim.o.completeopt = 'menuone,noinsert,noselect'
cmd("set omnifunc=syntaxcomplete#Complete")
-- opt('o', 'completeopt', 'menuone,noinsert,noselect')
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.showmode = false
utils.opt('w', 'number', true)
utils.opt('w', 'relativenumber', true)
-- opt('w', 'number', true)
-- opt('w', 'relativenumber', true)
-- vim.wo.number = true
-- vim.wo.relativenumber = true
-- opt('w', 'signcolumn', 'number')
-- vim.wo.signcolumn = 'number'
utils.opt('w', 'signcolumn', 'number')
utils.opt('w', 'wrap', true)
-- opt('w', 'wrap', true)
-- vim.wo.wrap = true
-- vim.o.tabstop = 2
-- vim.bo.tabstop = 2
-- vim.o.softtabstop = 2
-- vim.bo.softtabstop = 2
-- opt('b', 'expandtab', true)
-- opt('b', 'shiftwidth', indent)
-- opt('b', 'smartindent', true)
-- opt('b', 'tabstop', indent)
utils.opt('b', 'expandtab', true)
utils.opt('b', 'shiftwidth', indent)
utils.opt('b', 'smartindent', true)
utils.opt('b', 'tabstop', indent)
-- opt('b', 'softtabstop', indent)
-- vim.o.shiftwidth = 2
-- vim.bo.shiftwidth = 2
vim.g.smarttab = true
-- vim.o.autoindent = true
-- vim.bo.autoindent = true
utils.opt('b', 'autoindent', true)
-- opt('b', 'autoindent', true)
-- vim.o.smartindent = true
-- vim.bo.smartindent = true
-- vim.o.expandtab = true
-- vim.bo.expandtab = true
cmd('language en_US.utf-8')
utils.opt('w', 'list', true)
-- opt('w', 'list', true)
-- vim.wo.list = true
vim.o.listchars = 'tab:┆·,trail:·,precedes:,extends:'
vim.g.markdown_fenced_languages = {'sh', 'vim'}
vim.g.termbufm_direction_cmd = 'new'
vim.g.backup = false
-- vim.o.swapfile = false
-- opt('b', 'swapfile', false)
utils.opt('b', 'swapfile', false)
vim.g.writebackup = false
vim.o.clipboard = 'unnamedplus'
vim.g.wildmode = 'longest,list,full'
-- vim.lsp.set_log_level("debug")
-- cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'  -- disabled in visual mode
cmd 'au TextYankPost * lua vim.highlight.on_yank {}' -- disabled in visual mode
