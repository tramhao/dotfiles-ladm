return function()
local compe = require('compe')
local api = vim.api
local protocol = require('vim.lsp.protocol')



local t = function(str)
  return vim.api.nvim_replace_termcodes(str, true, true, true)
end
_G.s_tab_complete = function()
  if vim.fn.pumvisible() == 1 then
    return t "<C-p>"
  elseif vim.fn.call("vsnip#jumpable", {-1}) == 1 then
    return t "<Plug>(vsnip-jump-prev)"
  else
    return t "<S-Tab>"
  end
end

vim.api.nvim_set_keymap("s", "<Tab>", "v:lua.tab_complete()", {expr = true})
vim.api.nvim_set_keymap("i", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})
vim.api.nvim_set_keymap("s", "<S-Tab>", "v:lua.s_tab_complete()", {expr = true})

-- INIT
compe.setup {
  enabled = true;
  autocomplete = true;
  debug = false;
  min_length = 1;
  preselect = 'enable';
  throttle_time = 80;
  source_timeout = 200;
  incomplete_delay = 400;
  max_abbr_width = 100;
  max_kind_width = 100;
  max_menu_width = 100;
  documentation = false;
  -- allow_prefix_unmatch = false;

  source = {
    path = true;
    -- buffer = true;
    buffer = {menu = '[BUF]'};
    vsnip = {menu = '[SPT]'};
    nvim_lsp = {menu = '[LSP]'};
    nvim_lua = {menu = '[LUA]'};
    treesitter = true;
    calc = true;
    spell = true;
    tags = true;
    snippets_nvim = true;
  };
}

-- SET SNIPPETS PATH
vim.g.vsnip_snippet_dir = vim.fn.stdpath("config").."/snippets"
vim.g.vsnip_filetypes = {
  javascriptreact = {'javascript', 'html'},
  typescriptreact = {'typescript', 'html'}
}

-- Set completeopt to have a better completion experience
vim.o.completeopt = "menu,menuone,noselect"
-- api.nvim_command('set completeopt+=menu,longest,menuone,noinsert,noselect') --> This cuases small error with compe, might be noinsert

-- The above mapping will change the behavior of the <Enter> key when the popup menu is visible. In that case the Enter key will simply select the highlighted menu item, just as <C-Y> does. Does not seem to be neccessary right now with my config but leaving as inspo
--api.nvim_command('inoremap <expr> <CR> pumvisible() ? "\\<C-y>" : "\\<C-g>u\\<CR>"')




--" Avoid showing message extra message when using completion
api.nvim_command('set shortmess+=c')



-- CONFIGURES ICONS NEXT TO COMPLETION ITEMS FOR LSP
-- HOW CAN WE ADD BUFFER ICONS?
protocol.CompletionItemKind = {
  ' Text';        -- = 1
  'ƒ Method';      -- = 2;
  ' Function';    -- = 3;
  ' Constructor'; -- = 4;
  'ƒ Field';         -- = 5;
  ' Variable';    -- = 6;
  ' Class';       -- = 7;
  'ﰮ Interface';   -- = 8;
  ' Module';      -- = 9;
  ' Property';    -- = 10;
  ' Unit';        -- = 11;
  ' Value';       -- = 12;
  '了Enum';        -- = 13;
  ' Keyword';     -- = 14;
  '﬌ Snippet';     -- = 15;
  ' Color';       -- = 16;
  ' File';        -- = 17;
  'Reference';     -- = 18;
  ' Folder';      -- = 19;
  ' EnumMember';  -- = 20;
  ' Constant';    -- = 21;
  ' Struct';      -- = 22;
  'Event';         -- = 23;
  'Operator';      -- = 24;
  'TypeParameter'; -- = 25;
}
end