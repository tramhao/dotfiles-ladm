local cmd = vim.cmd -- to execute Vim commands e.g. cmd('pwd')
-- local o = vim.opt -- a table to access global variables
local indent = 4
vim.cmd("au BufWritePost ~/.config/nvim/*.{vim,lua} luafile ~/.config/nvim/init.lua")

-- TODO: Remove when https://github.com/neovim/neovim/pull/13479 lands

vim.g.mapleader = ";"
vim.b.mapleader = ";"
-- vim.opt.timeoutlen = 300 -- time to wait for a mapped sequence to complete (in milliseconds)
cmd("syntax enable")
cmd("filetype plugin on")
cmd("set path+=**")
cmd("set undofile")
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.incsearch = true
cmd("set iskeyword+=-")
vim.opt.encoding = "utf-8"
vim.opt.fileencodings = "utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1"
vim.opt.ruler = true
vim.opt.pumheight = 10
vim.opt.cmdheight = 1
vim.opt.laststatus = 2
vim.opt.cursorline = true
vim.opt.showtabline = 2
vim.opt.mouse = "a"
vim.opt.splitright = true
vim.opt.splitbelow = true
-- vim.opt.background = 'dark'
vim.cmd("au ColorScheme * hi Normal ctermbg=none guibg=none")
vim.cmd("au ColorScheme * hi SignColumn ctermbg=none guibg=none")
vim.cmd("au ColorScheme * hi NormalNC ctermbg=none guibg=none")
vim.cmd("au ColorScheme * hi MsgArea ctermbg=none guibg=none")
vim.cmd("au ColorScheme * hi TelescopeBorder ctermbg=none guibg=none")
vim.cmd("au ColorScheme * hi NvimTreeNormal ctermbg=none guibg=none")
vim.cmd("let &fcs='eob: '")
vim.opt.termguicolors = true
vim.opt.guifont = "Cascadia Code"
vim.opt.conceallevel = 0
vim.opt.hidden = true
vim.opt.updatetime = 300
vim.opt.scrolloff = 5
vim.opt.sidescrolloff = 5
vim.opt.completeopt = "menu,menuone,noselect"
cmd("set omnifunc=syntaxcomplete#Complete")
vim.opt.shortmess = vim.o.shortmess .. "c"
vim.opt.showmode = false
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.signcolumn = "number"
vim.opt.wrap = true
vim.opt.expandtab = true
vim.opt.shiftwidth = indent
vim.opt.smartindent = true
vim.opt.tabstop = indent
vim.opt.smarttab = true
vim.opt.autoindent = true
cmd("language en_US.utf-8")
vim.opt.list = true
vim.opt.listchars = "tab:┆·,trail:·,precedes:,extends:"
-- vim.opt.markdown_fenced_languages = {'sh', 'vim'}
-- vim.opt.termbufm_direction_cmd = 'new'
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.writebackup = false
vim.opt.clipboard = "unnamedplus"
vim.opt.wildmode = "longest,list,full"
-- cmd 'au TextYankPost * lua vim.highlight.on_yank {on_visual = false}'  -- disabled in visual mode
cmd("au TextYankPost * lua vim.highlight.on_yank {}") -- disabled in visual mode
