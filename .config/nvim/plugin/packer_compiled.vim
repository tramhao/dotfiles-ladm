" Automatically generated packer.nvim plugin loader code

if !has('nvim-0.5')
  echohl WarningMsg
  echom "Invalid Neovim version for packer.nvim!"
  echohl None
  finish
endif

packadd packer.nvim

try

lua << END
local package_path_str = "/home/tramhao/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/home/tramhao/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/home/tramhao/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/home/tramhao/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/home/tramhao/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s))
  if not success then
    print('Error running ' .. component .. ' for ' .. name)
    error(result)
  end
  return result
end

_G.packer_plugins = {
  ["colorbuddy.vim"] = {
    loaded = true,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/start/colorbuddy.vim"
  },
  ["completion-nvim"] = {
    after = { "vim-vsnip-integ", "vim-vsnip", "nvim-lspconfig" },
    config = { "\27LJ\2\n˘\3\0\0\4\0\15\0\0296\0\0\0009\0\1\0004\1\4\0005\2\4\0005\3\3\0=\3\5\2>\2\1\0015\2\6\0>\2\2\0015\2\a\0>\2\3\1=\1\2\0006\0\0\0009\0\1\0'\1\t\0=\1\b\0006\0\0\0009\0\1\0+\1\2\0=\1\n\0006\0\0\0009\0\v\0'\2\f\0B\0\2\0016\0\0\0009\0\1\0005\1\14\0=\1\r\0K\0\1\0\1\0\14\fTabNine\3\0\fBuffers\3\1\14UltiSnips\3\1\fKeyword\3\4\nClass\3\5\rConstant\3\5\15Interfaces\3\5\vMethod\3\n\14Variables\3\a\vModule\3\a\rFunction\3\a\nField\3\5\tFile\3\0\14vim-vsnip\3\5\30completion_items_priority,let g:completion_confirm_key = \"\\<C-y>\"\bcmd$completion_matching_ignore_case\14vim-vsnip\30completion_enable_snippet\1\0\1\tmode\n<c-n>\1\0\1\tmode\n<c-p>\19complete_items\1\0\0\1\3\0\0\blsp\fsnippet#completion_chain_complete_list\6g\bvim\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/completion-nvim"
  },
  ["glow.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/glow.nvim"
  },
  ["gruvbuddy.nvim"] = {
    config = { "\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\14gruvbuddy\16colorscheme\15colorbuddy\frequire\0" },
    loaded = true,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/start/gruvbuddy.nvim"
  },
  kommentary = {
    config = { "\27LJ\2\n´\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\3 prefer_single_line_comments\2\22ignore_whitespace\2\31use_consistent_indentation\2\fdefault\23configure_language\22kommentary.config\frequire\0" },
    loaded = true,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nµ\3\0\0\3\0\23\0$6\0\0\0'\2\1\0B\0\2\0025\1\3\0=\1\2\0005\1\6\0005\2\5\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\v\0015\2\f\0=\2\r\0015\2\14\0=\2\15\0015\2\16\0=\2\17\1=\1\4\0005\1\19\0004\2\0\0=\2\a\0014\2\0\0=\2\t\0015\2\20\0=\2\v\0015\2\21\0=\2\r\0014\2\0\0=\2\15\0014\2\0\0=\2\17\1=\1\18\0009\1\22\0B\1\1\1K\0\1\0\vstatus\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\22inactive_sections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\rsections\1\0\3\18icons_enabled\2\ntheme\fdracula\14separator\6|\foptions\flualine\frequire\0" },
    loaded = true,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n<\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    keys = { { "i", "(" }, { "i", "[" }, { "i", "<" }, { "i", "'" }, { "i", "{" }, { "i", '"' } },
    loaded = false,
    needs_bufread = false,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-autopairs"
  },
  ["nvim-colorizer.lua"] = {
    commands = { "ColorizerDetachFromBuffer", "ColorizerReloadAllBuffers", "ColorizerToggle", "ColorizerAttachToBuffer" },
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n_\0\3\n\0\4\0\n6\3\0\0009\3\1\0039\3\2\3)\5\0\0\18\6\0\0\18\a\1\0\18\b\2\0005\t\3\0B\3\6\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\24nvim_buf_set_keymap\bapi\bvimO\0\1\3\0\3\0\t9\1\0\0009\1\1\1\15\0\1\0X\2\4Ä9\1\0\0009\1\1\1+\2\2\0=\2\2\1K\0\1\0\27allow_incremental_sync\nflags\vconfigı\t\0\2\a\2'\0c-\2\0\0009\2\0\2\18\4\0\0\18\5\1\0B\2\3\0016\2\1\0'\4\2\0B\2\2\1-\2\1\0'\4\3\0'\5\4\0'\6\5\0B\2\4\1-\2\1\0'\4\3\0'\5\6\0'\6\a\0B\2\4\1-\2\1\0'\4\3\0'\5\b\0'\6\t\0B\2\4\1-\2\1\0'\4\3\0'\5\n\0'\6\v\0B\2\4\1-\2\1\0'\4\3\0'\5\f\0'\6\r\0B\2\4\1-\2\1\0'\4\3\0'\5\14\0'\6\15\0B\2\4\1-\2\1\0'\4\3\0'\5\16\0'\6\17\0B\2\4\1-\2\1\0'\4\3\0'\5\18\0'\6\19\0B\2\4\1-\2\1\0'\4\3\0'\5\20\0'\6\21\0B\2\4\1-\2\1\0'\4\3\0'\5\22\0'\6\t\0B\2\4\1-\2\1\0'\4\3\0'\5\23\0'\6\24\0B\2\4\1-\2\1\0'\4\3\0'\5\25\0'\6\26\0B\2\4\1-\2\1\0'\4\3\0'\5\27\0'\6\28\0B\2\4\1-\2\1\0'\4\3\0'\5\29\0'\6\30\0B\2\4\1-\2\1\0'\4\3\0'\5\31\0'\6 \0B\2\4\1-\2\1\0'\4\3\0'\5!\0'\6\"\0B\2\4\1-\2\1\0'\4\3\0'\5#\0'\6$\0B\2\4\1-\2\1\0'\4\3\0'\5%\0'\6&\0B\2\4\1K\0\1\0\2¿\5¿0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\n<C-p>0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\n<C-n>.<cmd>lua vim.lsp.buf.outgoing_calls()<CR>\15<leader>ao.<cmd>lua vim.lsp.buf.incoming_calls()<CR>\15<leader>ai*<cmd>lua vim.lsp.buf.formatting()<CR>\14<leader>=&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>ar<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\15<leader>ee+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>af\15<leader>ah0<cmd>lua vim.lsp.buf.workspace_symbol()<CR>\15<leader>gW/<cmd>lua vim.lsp.buf.document_symbol()<CR>\15<leader>gw/<cmd>lua vim.lsp.buf.type_definition()<CR>\agt.<cmd>lua vim.lsp.buf.implementation()<CR>\agi.<cmd>lua vim.lsp.buf.signature_help()<CR>\ags*<cmd>lua vim.lsp.buf.references()<CR>\agr%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\17LSP started.\nprint\14on_attachí\1\0\1\6\0\a\1\23\18\1\0\0006\2\0\0009\2\1\2'\4\2\0B\2\2\2\15\0\2\0X\3\15Ä6\2\0\0009\2\1\2'\4\2\0B\2\2\2'\3\3\0\18\4\0\0&\2\4\0026\3\4\0009\3\5\0039\3\6\3\18\5\2\0B\3\2\2\t\3\0\0X\3\1Ä\18\1\2\0L\1\2\0\15executable\afn\bvim\n/bin/\16VIRTUAL_ENV\vgetenv\aos\2ï\25\1\0\18\0ò\1\0Ç\2'\0\0\0'\1\1\0006\2\2\0'\4\3\0B\2\2\0026\3\4\0009\3\5\0039\3\6\0039\3\a\3B\3\1\0029\4\b\0039\4\3\0049\4\t\4+\5\2\0=\5\n\0046\4\2\0'\6\v\0B\4\2\0023\5\f\0003\6\r\0003\a\14\0009\b\15\0049\b\16\b5\n\18\0005\v\17\0=\v\19\n5\v\20\0=\v\21\n9\v\22\0049\v\23\v'\r\24\0B\v\2\2=\v\25\n=\a\26\nB\b\2\0019\b\27\0049\b\16\b5\n\28\0=\a\26\n5\v \0005\f\31\0005\r\30\0005\14\29\0=\14\t\r=\r\3\f=\f\b\v=\v!\n5\v\"\0=\v#\nB\b\2\0019\b$\0049\b\16\b5\n%\0=\a\26\n5\v&\0=\v#\n5\v*\0005\f)\0005\r(\0005\14'\0=\14\t\r=\r\3\f=\f\b\v=\v!\nB\b\2\0019\b+\0049\b\16\b5\n.\0005\v,\0>\1\1\v\18\f\0\0'\r-\0&\f\r\f>\f\3\v=\v\19\n=\a\26\n5\v2\0005\f1\0005\r0\0005\14/\0=\14\t\r=\r\3\f=\f\b\v=\v!\n5\vB\0005\f4\0005\r3\0=\r\3\f5\r5\0=\r6\f5\r8\0005\0147\0=\0149\r=\r:\f5\r?\0004\14\0\b6\15\4\0009\15;\0159\15<\15'\17=\0B\15\2\2+\16\2\0<\16\15\0146\15\4\0009\15;\0159\15<\15'\17>\0B\15\2\2+\16\2\0<\16\15\14=\14@\r=\rA\f=\fC\v=\vD\nB\b\2\0019\bE\0049\b\16\b5\nF\0=\a\26\nB\b\2\0019\bG\0049\b\16\b5\nH\0=\a\26\nB\b\2\0019\bI\0049\b\16\b5\nK\0005\vJ\0=\v\19\n=\a\26\n5\vO\0005\fN\0005\rM\0005\14L\0=\14\t\r=\r\3\f=\f\b\v=\v!\nB\b\2\0019\bP\0049\b\16\b5\nR\0005\vQ\0=\v\19\n=\a\26\n5\vT\0005\fS\0=\fU\v5\fV\0=\fW\v5\fX\0=\fY\v=\vD\n5\v]\0005\f\\\0005\r[\0005\14Z\0=\14\t\r=\r\3\f=\f\b\v=\v!\nB\b\2\0019\b^\0049\b\16\b5\n_\0=\a\26\n5\v`\0005\fa\0=\fb\v=\vc\nB\b\2\0019\bd\0049\b\16\b5\ne\0=\6f\n=\a\26\n5\vg\0=\v\19\n5\vh\0=\vb\n5\vl\0005\fj\0005\ri\0=\rk\f=\fd\v=\vD\n9\v\22\0049\v\23\v'\rm\0'\14\24\0B\v\3\2=\v\25\nB\b\2\0013\bn\0009\to\0049\t\16\t5\vq\0005\fp\0=\fb\v5\få\0005\r|\0005\14s\0\18\15\b\0'\17r\0B\15\2\2=\15t\0145\15u\0=\15v\0145\15w\0005\16x\0>\16\2\15=\15y\0145\15z\0=\15{\14=\14r\r5\14}\0005\15~\0=\15{\0145\15\0=\15v\0145\15Ä\0=\15Å\0145\15Ç\0=\15É\14=\14Ñ\r5\14Ö\0005\15Ü\0=\15{\0145\15á\0=\15v\0145\15à\0=\15É\0145\15â\0005\16ä\0>\16\2\15=\15y\14=\14ã\r=\rç\f5\ré\0=\rb\f5\rë\0005\14è\0005\15ê\0=\15v\14=\14í\r=\rì\f5\rî\0=\rï\f=\f#\vB\t\2\0019\tñ\0049\t\16\t5\vó\0=\a\26\vB\t\2\0012\0\0ÄK\0\1\0\1\0\0\14angularls\20formatFiletypes\1\0\1\15javascript\rprettier\15formatters\rprettier\1\0\0\1\5\0\0\21--stdin-filepath\14%filepath\19--single-quote\22--print-width 120\1\0\1\fcommand!./node_modules/.bin/prettier\1\0\3\vpython\vflake8\rmarkdown\17markdownlint\15javascript\veslint\flinters\1\0\0\17markdownlint\1\0\3\tline\3\1\fmessage\3\2\vcolumn\3ˇˇˇˇ\15\1\2\0\0\22^.*:(\\d+)\\s+(.*)$\1\0\1\14undefined\thint\1\2\0\0\f--stdin\1\2\0\0\t.git\1\0\a\16formatLines\3\1\rdebounce\3d\15sourceName\17markdownlint\fcommand\17markdownlint\17offsetColumn\3\0\15offsetLine\3\0\risStderr\2\veslint\15securities\1\0\2\4\0ÄÄÄÄ\4\nerror\4\0ÄÄ¿ˇ\3\fwarning\14parseJson\1\0\a\tline\tline\rsecurity\rseverity\fmessage\27${message} [${ruleId}]\14endColumn\14endColumn\fendLine\fendLine\15errorsRoot\17[0].messages\vcolumn\vcolumn\1\6\0\0\f--stdin\21--stdin-filename\14%filepath\r--format\tjson\1\2\0\0\t.git\1\0\3\fcommand\31./node_modules/.bin/eslint\15sourceName\veslint\rdebounce\3d\1\0\0\17rootPatterns\1\2\0\0\5\18formatPattern\1\0\3\tline\3\1\fmessage\3\4\vcolumn\3\3\1\2\0\0#^[^:]+:(\\d+):((\\d+):)?\\s+(.+)$\targs\1\4\0\0\25--stdin-display-name\14%filepath\6-\fcommand\1\0\3\16formatLines\3\1\rdebounce\3˙\1\15sourceName\vflake8\vflake8\1\0\0\1\4\0\0\15javascript\vpython\rmarkdown\17diagnosticls\0\vgo.mod\1\0\0\ranalyses\1\0\1\16staticcheck\2\1\0\1\17unusedparams\2\1\3\0\0\ago\ngomod\1\3\0\0\ngopls\nserve\fon_init\1\0\0\ngopls\ngodot\14filetypes\1\3\0\0\agd\rgdscript\1\0\2\thost\014127.0.0.1\tport\3¯.\1\0\0\rgdscript\1\0\0\1\0\0\1\0\0\1\0\1\19snippetSupport\2\tscss\1\0\1\rvalidate\2\tless\1\0\1\rvalidate\2\bcss\1\0\0\1\0\1\rvalidate\1\1\0\0\1\3\0\0\31vscode-css-language-server\f--stdio\ncssls\1\0\0\1\0\0\1\0\0\1\0\1\19snippetSupport\2\1\0\0\1\3\0\0 vscode-html-language-server\f--stdio\thtml\1\0\0\rtsserver\1\0\0\nvimls\rsettings\bLua\1\0\0\14workspace\flibrary\1\0\0\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\afn\16diagnostics\fglobals\1\0\0\1\3\0\0\bvim\buse\fruntime\1\0\1\fversion\vLuaJIT\1\0\0\1\0\2\19keywordSnippet\vEnable\16callSnippet\tBoth\1\0\0\1\0\0\1\0\0\1\0\1\19snippetSupport\2\1\0\0\14/main.lua\1\3\0\0\0\a-E\16sumneko_lua\1\0\0\1\0\0\1\0\0\1\0\1\19snippetSupport\2\1\0\1\20disableSnippets\1\1\0\0\25jedi_language_server\17init_options\1\0\3\21clangdFileStatus\2\23completeUnimported\2\20usePlaceholders\2\17capabilities\1\0\0\1\0\0\1\0\0\1\0\1\19snippetSupport\2\1\0\0\vclangd\14on_attach\rroot_dir\t.git\17root_pattern\tutil\rfiletype\1\2\0\0\ash\bcmd\1\0\0\1\3\0\0\"/usr/bin/bash-language-server\nstart\nsetup\vbashls\0\0\0\14lspconfig\19snippetSupport\19completionItem\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim\15completion\frequire!/usr/bin/lua-language-server#/usr/share/lua-language-server\0" },
    load_after = {
      ["completion-nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-textobjects" },
    commands = { "TSInstall", "TSBufEnable", "TSEnableAll", "TSModuleInfo" },
    config = { "\27LJ\2\n∏\f\0\0\a\0008\0D6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\15\0005\4\14\0=\4\16\0035\4\17\0005\5\18\0=\5\f\4=\4\19\0035\4\20\0005\5\21\0=\5\f\4=\4\22\3=\3\23\0025\3\28\0005\4\24\0004\5\0\0=\5\5\0045\5\26\0005\6\25\0=\6\27\5=\5\f\4=\4\29\0035\4\30\0005\5\31\0=\5 \0045\5!\0=\5\"\4=\4#\0035\4$\0005\5%\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\0045\5+\0=\5,\4=\4-\3=\3.\2B\0\2\0016\0\0\0'\2/\0B\0\2\0016\0000\0009\0001\0009\0002\0009\0003\0+\1\0\0=\0014\0'\0016\0=\0015\0+\1\0\0=\0017\0K\0\1\0\24punctuation.bracket\14Delimiter\26punctuation.delimiter\nerror\vhl_map\16highlighter\15treesitter\bvim\30nvim-treesitter.highlight\16textobjects\tmove\18goto_next_end\1\0\2\a]M\20@function.outer\a][\17@class.outer\20goto_next_start\1\0\2\a]m\20@function.outer\a]]\17@class.outer\22goto_previous_end\1\0\2\a[]\17@class.outer\a[M\20@function.outer\24goto_previous_start\1\0\2\a[m\20@function.outer\a[[\17@class.outer\1\0\1\venable\2\tswap\18swap_previous\1\0\1\14<leader>P\21@parameter.inner\14swap_next\1\0\1\14<leader>N\21@parameter.inner\1\0\1\venable\2\vselect\1\0\0\aiL\1\0\15\aal\16@loop.outer\aib\17@block.inner\aif\20@function.inner\aab\17@block.outer\aas\21@statement.outer\aic\23@conditional.inner\aam\16@call.outer\aac\23@conditional.outer\aad\19@comment.outer\aiC\17@class.inner\ais\21@statement.inner\aaC\17@class.outer\aim\16@call.inner\ail\16@loop.inner\aaf\20@function.outer\1\0\4\6c$(function_definition) @function\vpython$(function_definition) @function\bcpp$(function_definition) @function\tjava#(method_declaration) @function\1\0\1\venable\2\rrefactor\15navigation\1\0\2\21list_definitions\bgnD\20goto_definition\bgnd\1\0\1\venable\2\17smart_rename\1\0\1\17smart_rename\bgnr\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\19init_selection\bgni\22scope_incremental\bgns\21node_incremental\bgnn\21node_decremental\bgnp\1\0\1\venable\2\14highlight\1\0\1\venable\2\frainbow\1\0\1\21ensure_installed\15maintained\fdisable\1\2\0\0\tbash\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/start/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/packer.nvim"
  },
  rainbow = {
    config = { "\27LJ\2\n{\0\0\4\0\b\0\0156\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0)\1\1\0=\1\4\0006\0\0\0009\0\5\0009\0\6\0'\2\a\0+\3\1\0B\0\3\1K\0\1\0\v      \14nvim_exec\bapi\19rainbow_active\6g\14syntax on\bcmd\bvim\0" },
    loaded = true,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/start/rainbow"
  },
  ["startuptime.vim"] = {
    commands = { "StartupTime" },
    loaded = false,
    needs_bufread = false,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/startuptime.vim"
  },
  ["vim-go"] = {
    loaded = false,
    needs_bufread = true,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/vim-go"
  },
  ["vim-markdown"] = {
    config = { "\27LJ\2\n£\1\0\0\2\0\a\0\0176\0\0\0009\0\1\0)\1\1\0=\1\2\0006\0\0\0009\0\1\0)\1\2\0=\1\3\0006\0\0\0009\0\1\0'\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0K\0\1\0\22vim_markdown_math\5\16tex_conceal\25vim_markdown_conceal\"vim_markdown_folding_disabled\6g\bvim\0" },
    loaded = false,
    needs_bufread = true,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/vim-markdown"
  },
  ["vim-sneak"] = {
    config = { "\27LJ\2\n`\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0\27let g:sneak#s_next = 1\26let g:sneak#label = 1\bcmd\bvim\0" },
    loaded = true,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/start/vim-sneak"
  },
  ["vim-vsnip"] = {
    load_after = {
      ["completion-nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    after_files = { "/home/tramhao/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ/after/plugin/vsnip_integ.vim" },
    load_after = {
      ["completion-nvim"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ"
  },
  ["wiki.vim"] = {
    commands = { "WikiIndex" },
    loaded = false,
    needs_bufread = false,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/wiki.vim"
  }
}

-- Setup for: wiki.vim
try_loadstring("\27LJ\2\n˛\2\0\0\4\0\f\0\0236\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\t\0009\0\n\0'\2\v\0+\3\1\0B\0\3\1K\0\1\0≥\1      function! MyFunction(text) abort\n         return substitute(tolower(a:text), '\\s\\+', '-', 'g')\n      endfunction\n\n      let g:wiki_map_link_create = 'MyFunction'\n      \14nvim_exec\bapi\amd\26wiki_link_target_type\22wiki_write_on_nav\1\2\0\0\amd\19wiki_filetypes\16~/Sync/wiki\14wiki_root\6g\bvim\0", "setup", "wiki.vim")
-- Setup for: glow.nvim
try_loadstring("\27LJ\2\nm\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\2\vsilent\2\fnoremap\2\14:Glow<CR>\14<Leader>p\6n\20nvim_set_keymap\bapi\bvim\0", "setup", "glow.nvim")
-- Config for: kommentary
try_loadstring("\27LJ\2\n´\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\3 prefer_single_line_comments\2\22ignore_whitespace\2\31use_consistent_indentation\2\fdefault\23configure_language\22kommentary.config\frequire\0", "config", "kommentary")
-- Config for: lualine.nvim
try_loadstring("\27LJ\2\nµ\3\0\0\3\0\23\0$6\0\0\0'\2\1\0B\0\2\0025\1\3\0=\1\2\0005\1\6\0005\2\5\0=\2\a\0015\2\b\0=\2\t\0015\2\n\0=\2\v\0015\2\f\0=\2\r\0015\2\14\0=\2\15\0015\2\16\0=\2\17\1=\1\4\0005\1\19\0004\2\0\0=\2\a\0014\2\0\0=\2\t\0015\2\20\0=\2\v\0015\2\21\0=\2\r\0014\2\0\0=\2\15\0014\2\0\0=\2\17\1=\1\18\0009\1\22\0B\1\1\1K\0\1\0\vstatus\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\22inactive_sections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\rsections\1\0\3\18icons_enabled\2\ntheme\fdracula\14separator\6|\foptions\flualine\frequire\0", "config", "lualine.nvim")
-- Config for: vim-sneak
try_loadstring("\27LJ\2\n`\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0\27let g:sneak#s_next = 1\26let g:sneak#label = 1\bcmd\bvim\0", "config", "vim-sneak")
-- Config for: gruvbuddy.nvim
try_loadstring("\27LJ\2\nL\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\14gruvbuddy\16colorscheme\15colorbuddy\frequire\0", "config", "gruvbuddy.nvim")
-- Config for: rainbow
try_loadstring("\27LJ\2\n{\0\0\4\0\b\0\0156\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0)\1\1\0=\1\4\0006\0\0\0009\0\5\0009\0\6\0'\2\a\0+\3\1\0B\0\3\1K\0\1\0\v      \14nvim_exec\bapi\19rainbow_active\6g\14syntax on\bcmd\bvim\0", "config", "rainbow")

-- Command lazy-loads
vim.cmd [[command! -nargs=* -range -bang -complete=file ColorizerToggle lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file ColorizerAttachToBuffer lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerAttachToBuffer", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file TSEnableAll lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSEnableAll", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file TSModuleInfo lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSModuleInfo", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'startuptime.vim'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file WikiIndex lua require("packer.load")({'wiki.vim'}, { cmd = "WikiIndex", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file TSBufEnable lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSBufEnable", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file TSInstall lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSInstall", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file ColorizerDetachFromBuffer lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerDetachFromBuffer", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file ColorizerReloadAllBuffers lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerReloadAllBuffers", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]

-- Keymap lazy-loads
vim.cmd [[inoremap <silent> ( <cmd>lua require("packer.load")({'nvim-autopairs'}, { keys = "(" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> ' <cmd>lua require("packer.load")({'nvim-autopairs'}, { keys = "'" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> { <cmd>lua require("packer.load")({'nvim-autopairs'}, { keys = "{" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> [ <cmd>lua require("packer.load")({'nvim-autopairs'}, { keys = "[" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> < <cmd>lua require("packer.load")({'nvim-autopairs'}, { keys = "<lt>" }, _G.packer_plugins)<cr>]]
vim.cmd [[inoremap <silent> " <cmd>lua require("packer.load")({'nvim-autopairs'}, { keys = "\"" }, _G.packer_plugins)<cr>]]

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
vim.cmd [[au FileType lua ++once lua require("packer.load")({'completion-nvim', 'vim-go', 'nvim-treesitter'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType cpp ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "cpp" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType c ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "c" }, _G.packer_plugins)]]
vim.cmd [[au FileType json ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "json" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'glow.nvim', 'vim-markdown', 'nvim-treesitter'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType md ++once lua require("packer.load")({'glow.nvim', 'completion-nvim', 'vim-go', 'vim-markdown'}, { ft = "md" }, _G.packer_plugins)]]
vim.cmd [[au FileType bash ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "bash" }, _G.packer_plugins)]]
vim.cmd [[au FileType zsh ++once lua require("packer.load")({'completion-nvim', 'vim-go', 'nvim-treesitter'}, { ft = "zsh" }, _G.packer_plugins)]]
vim.cmd [[au FileType sh ++once lua require("packer.load")({'completion-nvim', 'vim-go', 'nvim-treesitter'}, { ft = "sh" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'completion-nvim', 'vim-go', 'nvim-treesitter'}, { ft = "go" }, _G.packer_plugins)]]
vim.cmd [[au FileType java ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "java" }, _G.packer_plugins)]]
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
vim.cmd [[source /home/tramhao/.local/share/nvim/site/pack/packer/opt/vim-go/ftdetect/gofiletype.vim]]
vim.cmd [[source /home/tramhao/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]]
vim.cmd [[source /home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-treesitter/ftdetect/query.vim]]
vim.cmd("augroup END")
END

catch
  echohl ErrorMsg
  echom "Error in packer_compiled: " .. v:exception
  echom "Please check your config for correctness"
  echohl None
endtry
