vim.g.mapleader = ';'
vim.b.mapleader = ' '
vim.cmd("syntax enable")
vim.cmd("filetype plugin on")
vim.cmd("set path+=**")
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.hlsearch = true
vim.o.incsearch = true
vim.cmd("set iskeyword+=-")
-- vim.o.iskeyword = vim.o.iskeyword .. '-'
vim.o.encoding = 'utf-8'
vim.g.fileencodings = 'utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1'
vim.o.enc = 'utf8'
vim.g.fencs = 'utf8,gbk,gb2312,gb18030'
vim.g.ruler = true
vim.g.pumheight = 10
vim.g.cmdheight = 1
vim.g.laststatus = 2
vim.wo.cursorline = true
vim.g.showtabline = 1
vim.g.mouse = 'a'
vim.o.splitright = true
vim.o.splitbelow = true
-- vim.o.background = 'dark'
vim.o.termguicolors = true
vim.g.rehash256 = 1
-- vim.cmd('colo sonokai')
vim.wo.conceallevel = 0
vim.o.hidden = true
vim.o.updatetime = 300
vim.o.scrolloff = 5
vim.o.sidescrolloff = 5
vim.o.completeopt = 'menuone,noinsert,noselect'
vim.o.shortmess = vim.o.shortmess .. 'c'
vim.o.showmode = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.wo.signcolumn = 'number'
vim.wo.wrap = true
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.bo.softtabstop = 2
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
vim.g.smarttab = true
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
vim.bo.smartindent = true
vim.o.expandtab = true
vim.bo.expandtab = true
vim.cmd('language en_US.utf-8')
vim.wo.list = true
vim.o.listchars = 'tab:┆·,trail:·,precedes:,extends:'
vim.g.markdown_fenced_languages = {'sh', 'vim'}
vim.g.termbufm_direction_cmd = 'new'
vim.g.backup = false
vim.bo.swapfile = false
vim.g.writebackup = false
-- vim.cmd('set clipboard=unnamedplus')
vim.o.clipboard = 'unnamedplus'
vim.g.wildmode='longest,list,full'
