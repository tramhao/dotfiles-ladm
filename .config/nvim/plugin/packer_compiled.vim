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
  ["glow.nvim"] = {
    loaded = false,
    needs_bufread = false,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/glow.nvim"
  },
  kommentary = {
    config = { "\27LJ\2\n´\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\3\31use_consistent_indentation\2 prefer_single_line_comments\2\22ignore_whitespace\2\fdefault\23configure_language\22kommentary.config\frequire\0" },
    loaded = true,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/start/kommentary"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\nª\3\0\0\5\0\24\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\3=\3\19\0025\3\20\0004\4\0\0=\4\b\0034\4\0\0=\4\n\0035\4\21\0=\4\f\0035\4\22\0=\4\14\0034\4\0\0=\4\16\0034\4\0\0=\4\18\3=\3\23\2B\0\2\1K\0\1\0\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\1\0\3\18icons_enabled\2\ntheme\fdracula\14separator\6|\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/start/lualine.nvim"
  },
  ["nvim-colorizer.lua"] = {
    commands = { "ColorizerDetachFromBuffer", "ColorizerReloadAllBuffers", "ColorizerToggle", "ColorizerAttachToBuffer" },
    config = { "\27LJ\2\n7\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua"
  },
  ["nvim-compe"] = {
    after = { "vim-vsnip-integ", "vim-vsnip", "nvim-lspconfig" },
    after_files = { "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_buffer.vim", "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_calc.vim", "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_nvim_lsp.vim", "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_nvim_lua.vim", "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_omni.vim", "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_path.vim", "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_snippets_nvim.vim", "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_spell.vim", "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_tags.vim", "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_treesitter.vim", "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_ultisnips.vim", "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_vim_lsc.vim", "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_vim_lsp.vim", "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-compe/after/plugin/compe_vsnip.vim" },
    config = { "\27LJ\2\nπ\b\0\0\5\0%\00016\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0005\4\5\0=\4\6\0035\4\a\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\3=\3\r\2B\0\2\0016\0\14\0009\0\15\0006\1\14\0009\1\17\0019\1\18\1'\3\19\0B\1\2\2'\2\20\0&\1\2\1=\1\16\0006\0\14\0009\0\15\0005\1\23\0005\2\22\0=\2\24\0015\2\25\0=\2\26\1=\1\21\0006\0\14\0009\0\27\0'\1\29\0=\1\28\0006\0\14\0009\0\30\0009\0\31\0'\2 \0B\0\2\0016\0\14\0009\0!\0009\0\"\0005\1$\0=\1#\0K\0\1\0\1\26\0\0\rÓòí Text\14∆í Method\17ÔÇö Function\20Óàè Constructor\r∆í Field\17Óûõ Variable\14ÓÉç Class\18Ô∞Æ Interface\15Ô£ñ Module\17Óò§ Property\rÔëµ Unit\14Ô¢ü Value\f‰∫ÜEnum\16Ô†Ö Keyword\16Ô¨å Snippet\14Óà´ Color\rÔÖõ File\14Reference\15ÔÑï Folder\19ÔÖù EnumMember\17Óà¨ Constant\15ÔÉä Struct\nEvent\rOperator\18TypeParameter\23CompletionItemKind\rprotocol\blsp\21set shortmess+=c\17nvim_command\bapi\26menu,menuone,noselect\16completeopt\6o\20typescriptreact\1\3\0\0\15typescript\thtml\20javascriptreact\1\0\0\1\3\0\0\15javascript\thtml\20vsnip_filetypes\14/snippets\vconfig\fstdpath\afn\22vsnip_snippet_dir\6g\bvim\vsource\rnvim_lua\1\0\1\tmenu\n[LUA]\rnvim_lsp\1\0\1\tmenu\n[LSP]\nvsnip\1\0\1\tmenu\n[SPT]\vbuffer\1\0\1\tmenu\n[BUF]\1\0\6\nspell\2\ttags\2\15treesitter\2\18snippets_nvim\2\tcalc\2\tpath\2\1\0\f\19max_menu_width\3d\fenabled\2\21incomplete_delay\3ê\3\19source_timeout\3»\1\18throttle_time\3P\14preselect\venable\15min_length\3\1\17autocomplete\2\ndebug\1\19max_kind_width\3d\19max_abbr_width\3d\18documentation\2\nsetup\ncompe\frequire\0" },
    loaded = false,
    needs_bufread = false,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-compe"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\n_\0\3\n\0\4\0\n6\3\0\0009\3\1\0039\3\2\3)\5\0\0\18\6\0\0\18\a\1\0\18\b\2\0005\t\3\0B\3\6\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\24nvim_buf_set_keymap\bapi\bvimO\0\1\3\0\3\0\t9\1\0\0009\1\1\1\15\0\1\0X\2\4Ä9\1\0\0009\1\1\1+\2\2\0=\2\2\1K\0\1\0\27allow_incremental_sync\nflags\vconfig’\t\0\0\5\1&\0^6\0\0\0'\2\1\0B\0\2\1-\0\0\0'\2\2\0'\3\3\0'\4\4\0B\0\4\1-\0\0\0'\2\2\0'\3\5\0'\4\6\0B\0\4\1-\0\0\0'\2\2\0'\3\a\0'\4\b\0B\0\4\1-\0\0\0'\2\2\0'\3\t\0'\4\n\0B\0\4\1-\0\0\0'\2\2\0'\3\v\0'\4\f\0B\0\4\1-\0\0\0'\2\2\0'\3\r\0'\4\14\0B\0\4\1-\0\0\0'\2\2\0'\3\15\0'\4\16\0B\0\4\1-\0\0\0'\2\2\0'\3\17\0'\4\18\0B\0\4\1-\0\0\0'\2\2\0'\3\19\0'\4\20\0B\0\4\1-\0\0\0'\2\2\0'\3\21\0'\4\b\0B\0\4\1-\0\0\0'\2\2\0'\3\22\0'\4\23\0B\0\4\1-\0\0\0'\2\2\0'\3\24\0'\4\25\0B\0\4\1-\0\0\0'\2\2\0'\3\26\0'\4\27\0B\0\4\1-\0\0\0'\2\2\0'\3\28\0'\4\29\0B\0\4\1-\0\0\0'\2\2\0'\3\30\0'\4\31\0B\0\4\1-\0\0\0'\2\2\0'\3 \0'\4!\0B\0\4\1-\0\0\0'\2\2\0'\3\"\0'\4#\0B\0\4\1-\0\0\0'\2\2\0'\3$\0'\4%\0B\0\4\1K\0\1\0\4¿0<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>\n<C-p>0<cmd>lua vim.lsp.diagnostic.goto_next()<CR>\n<C-n>.<cmd>lua vim.lsp.buf.outgoing_calls()<CR>\15<leader>ao.<cmd>lua vim.lsp.buf.incoming_calls()<CR>\15<leader>ai*<cmd>lua vim.lsp.buf.formatting()<CR>\14<leader>=&<cmd>lua vim.lsp.buf.rename()<CR>\15<leader>ar<<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>\15<leader>ee+<cmd>lua vim.lsp.buf.code_action()<CR>\15<leader>af\15<leader>ah0<cmd>lua vim.lsp.buf.workspace_symbol()<CR>\15<leader>gW/<cmd>lua vim.lsp.buf.document_symbol()<CR>\15<leader>gw/<cmd>lua vim.lsp.buf.type_definition()<CR>\agt.<cmd>lua vim.lsp.buf.implementation()<CR>\agi.<cmd>lua vim.lsp.buf.signature_help()<CR>\ags*<cmd>lua vim.lsp.buf.references()<CR>\agr%<cmd>lua vim.lsp.buf.hover()<CR>\6K*<cmd>lua vim.lsp.buf.definition()<CR>\agd+<cmd>lua vim.lsp.buf.declaration()<CR>\agD\6n\17LSP started.\nprintí\1\0\1\6\0\a\1\23\18\1\0\0006\2\0\0009\2\1\2'\4\2\0B\2\2\2\15\0\2\0X\3\15Ä6\2\0\0009\2\1\2'\4\2\0B\2\2\2'\3\3\0\18\4\0\0&\2\4\0026\3\4\0009\3\5\0039\3\6\3\18\5\2\0B\3\2\2\t\3\0\0X\3\1Ä\18\1\2\0L\1\2\0\15executable\afn\bvim\n/bin/\16VIRTUAL_ENV\vgetenv\aos\2˛\24\1\0\17\0ò\1\0˛\1'\0\0\0'\1\1\0006\2\2\0009\2\3\0029\2\4\0029\2\5\2B\2\1\0029\3\6\0029\3\a\0039\3\b\3+\4\2\0=\4\t\0036\3\n\0'\5\v\0B\3\2\0023\4\f\0003\5\r\0003\6\14\0009\a\15\0039\a\16\a5\t\18\0005\n\17\0=\n\19\t5\n\20\0=\n\21\t9\n\22\0039\n\23\n'\f\24\0B\n\2\2=\n\25\t=\6\26\tB\a\2\0019\a\27\0039\a\16\a5\t\28\0=\6\26\t5\n \0005\v\31\0005\f\30\0005\r\29\0=\r\b\f=\f\a\v=\v\6\n=\n!\t5\n\"\0=\n#\tB\a\2\0019\a$\0039\a\16\a5\t%\0=\6\26\t5\n&\0=\n#\t5\n*\0005\v)\0005\f(\0005\r'\0=\r\b\f=\f\a\v=\v\6\n=\n!\tB\a\2\0019\a+\0039\a\16\a5\t.\0005\n,\0>\1\1\n\18\v\0\0'\f-\0&\v\f\v>\v\3\n=\n\19\t=\6\26\t5\nB\0005\v0\0005\f/\0=\f\a\v5\f1\0006\r\2\0009\r2\r6\0153\0009\0154\15'\0165\0B\r\3\2=\r4\f=\f6\v5\f8\0005\r7\0=\r9\f=\f:\v5\f?\0004\r\0\b6\14\2\0009\14;\0149\14<\14'\16=\0B\14\2\2+\15\2\0<\15\14\r6\14\2\0009\14;\0149\14<\14'\16>\0B\14\2\2+\15\2\0<\15\14\r=\r@\f=\fA\v=\vC\n=\nD\tB\a\2\0019\aE\0039\a\16\a5\tF\0=\6\26\tB\a\2\0019\aG\0039\a\16\a5\tH\0=\6\26\tB\a\2\0019\aI\0039\a\16\a5\tK\0005\nJ\0=\n\19\t=\6\26\t5\nO\0005\vN\0005\fM\0005\rL\0=\r\b\f=\f\a\v=\v\6\n=\n!\tB\a\2\0019\aP\0039\a\16\a5\tR\0005\nQ\0=\n\19\t=\6\26\t5\nT\0005\vS\0=\vU\n5\vV\0=\vW\n5\vX\0=\vY\n=\nD\t5\n]\0005\v\\\0005\f[\0005\rZ\0=\r\b\f=\f\a\v=\v\6\n=\n!\tB\a\2\0019\a^\0039\a\16\a5\t_\0=\6\26\t5\n`\0005\va\0=\vb\n=\nc\tB\a\2\0019\ad\0039\a\16\a5\te\0=\5f\t=\6\26\t5\ng\0=\n\19\t5\nh\0=\nb\t5\nl\0005\vj\0005\fi\0=\fk\v=\vd\n=\nD\t9\n\22\0039\n\23\n'\fm\0'\r\24\0B\n\3\2=\n\25\tB\a\2\0013\an\0009\bo\0039\b\16\b5\nq\0005\vp\0=\vb\n5\vå\0005\f|\0005\rs\0\18\14\a\0'\16r\0B\14\2\2=\14t\r5\14u\0=\14v\r5\14w\0005\15x\0>\15\2\14=\14y\r5\14z\0=\14{\r=\rr\f5\r}\0005\14~\0=\14{\r5\14\0=\14v\r5\14Ä\0=\14Å\r5\14Ç\0=\14É\r=\rÑ\f5\rÖ\0005\14Ü\0=\14{\r5\14á\0=\14v\r5\14à\0=\14É\r5\14â\0005\15ä\0>\15\2\14=\14y\r=\rã\f=\fç\v5\fé\0=\fb\v5\fë\0005\rè\0005\14ê\0=\14v\r=\rí\f=\fì\v5\fî\0=\fï\v=\v#\nB\b\2\0019\bñ\0039\b\16\b5\nó\0=\6\26\nB\b\2\0012\0\0ÄK\0\1\0\1\0\0\14angularls\20formatFiletypes\1\0\1\15javascript\rprettier\15formatters\rprettier\1\0\0\1\5\0\0\21--stdin-filepath\14%filepath\19--single-quote\22--print-width 120\1\0\1\fcommand!./node_modules/.bin/prettier\1\0\3\15javascript\veslint\vpython\vflake8\rmarkdown\17markdownlint\flinters\1\0\0\17markdownlint\1\0\3\vcolumn\3ˇˇˇˇ\15\tline\3\1\fmessage\3\2\1\2\0\0\22^.*:(\\d+)\\s+(.*)$\1\0\1\14undefined\thint\1\2\0\0\f--stdin\1\2\0\0\t.git\1\0\a\17offsetColumn\3\0\15offsetLine\3\0\risStderr\2\16formatLines\3\1\rdebounce\3d\15sourceName\17markdownlint\fcommand\17markdownlint\veslint\15securities\1\0\2\4\0ÄÄÄÄ\4\nerror\4\0ÄÄ¿ˇ\3\fwarning\14parseJson\1\0\a\14endColumn\14endColumn\fendLine\fendLine\fmessage\27${message} [${ruleId}]\15errorsRoot\17[0].messages\vcolumn\vcolumn\tline\tline\rsecurity\rseverity\1\6\0\0\f--stdin\21--stdin-filename\14%filepath\r--format\tjson\1\2\0\0\t.git\1\0\3\15sourceName\veslint\rdebounce\3d\fcommand\31./node_modules/.bin/eslint\1\0\0\17rootPatterns\1\2\0\0\5\18formatPattern\1\0\3\vcolumn\3\3\tline\3\1\fmessage\3\4\1\2\0\0#^[^:]+:(\\d+):((\\d+):)?\\s+(.+)$\targs\1\4\0\0\25--stdin-display-name\14%filepath\6-\fcommand\1\0\3\16formatLines\3\1\rdebounce\3˙\1\15sourceName\vflake8\vflake8\1\0\0\1\4\0\0\15javascript\vpython\rmarkdown\17diagnosticls\0\vgo.mod\1\0\0\ranalyses\1\0\1\16staticcheck\2\1\0\1\17unusedparams\2\1\3\0\0\ago\ngomod\1\3\0\0\ngopls\nserve\fon_init\1\0\0\ngopls\ngodot\14filetypes\1\3\0\0\agd\rgdscript\1\0\2\thost\014127.0.0.1\tport\3¯.\1\0\0\rgdscript\1\0\0\1\0\0\1\0\0\1\0\1\19snippetSupport\2\tscss\1\0\1\rvalidate\2\tless\1\0\1\rvalidate\2\bcss\1\0\0\1\0\1\rvalidate\1\1\0\0\1\3\0\0\31vscode-css-language-server\f--stdio\ncssls\1\0\0\1\0\0\1\0\0\1\0\1\19snippetSupport\2\1\0\0\1\3\0\0 vscode-html-language-server\f--stdio\thtml\1\0\0\rtsserver\1\0\0\nvimls\rsettings\bLua\1\0\0\14workspace\flibrary\1\0\0\28$VIMRUNTIME/lua/vim/lsp\20$VIMRUNTIME/lua\vexpand\afn\16diagnostics\fglobals\1\0\0\1\3\0\0\bvim\buse\fruntime\6;\tpath\fpackage\nsplit\1\0\1\fversion\vLuaJIT\1\0\0\1\0\2\19keywordSnippet\vEnable\16callSnippet\tBoth\1\0\0\14/main.lua\1\3\0\0\0\a-E\16sumneko_lua\1\0\0\1\0\0\1\0\0\1\0\1\19snippetSupport\2\1\0\1\20disableSnippets\1\1\0\0\25jedi_language_server\17init_options\1\0\3\20usePlaceholders\2\21clangdFileStatus\2\23completeUnimported\2\17capabilities\1\0\0\1\0\0\1\0\0\1\0\1\19snippetSupport\2\1\0\0\vclangd\14on_attach\rroot_dir\t.git\17root_pattern\tutil\rfiletype\1\2\0\0\ash\bcmd\1\0\0\1\3\0\0\"/usr/bin/bash-language-server\nstart\nsetup\vbashls\0\0\0\14lspconfig\frequire\19snippetSupport\19completionItem\15completion\17textDocument\29make_client_capabilities\rprotocol\blsp\bvim!/usr/bin/lua-language-server#/usr/share/lua-language-server\0" },
    load_after = {
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig"
  },
  ["nvim-monokai"] = {
    config = { "\27LJ\2\n0\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\17colo monokai\bcmd\bvim\0" },
    loaded = true,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/start/nvim-monokai"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-textobjects" },
    commands = { "TSInstall", "TSBufEnable", "TSEnableAll", "TSModuleInfo" },
    config = { "\27LJ\2\n∏\f\0\0\a\0008\0D6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\6\0005\3\3\0005\4\4\0=\4\5\3=\3\a\0025\3\b\0=\3\t\0025\3\n\0005\4\v\0=\4\f\3=\3\r\0025\3\15\0005\4\14\0=\4\16\0035\4\17\0005\5\18\0=\5\f\4=\4\19\0035\4\20\0005\5\21\0=\5\f\4=\4\22\3=\3\23\0025\3\28\0005\4\24\0004\5\0\0=\5\5\0045\5\26\0005\6\25\0=\6\27\5=\5\f\4=\4\29\0035\4\30\0005\5\31\0=\5 \0045\5!\0=\5\"\4=\4#\0035\4$\0005\5%\0=\5&\0045\5'\0=\5(\0045\5)\0=\5*\0045\5+\0=\5,\4=\4-\3=\3.\2B\0\2\0016\0\0\0'\2/\0B\0\2\0016\0000\0009\0001\0009\0002\0009\0003\0+\1\0\0=\0014\0'\0016\0=\0015\0+\1\0\0=\0017\0K\0\1\0\24punctuation.bracket\14Delimiter\26punctuation.delimiter\nerror\vhl_map\16highlighter\15treesitter\bvim\30nvim-treesitter.highlight\16textobjects\tmove\18goto_next_end\1\0\2\a][\17@class.outer\a]M\20@function.outer\20goto_next_start\1\0\2\a]]\17@class.outer\a]m\20@function.outer\22goto_previous_end\1\0\2\a[M\20@function.outer\a[]\17@class.outer\24goto_previous_start\1\0\2\a[[\17@class.outer\a[m\20@function.outer\1\0\1\venable\2\tswap\18swap_previous\1\0\1\14<leader>P\21@parameter.inner\14swap_next\1\0\1\14<leader>N\21@parameter.inner\1\0\1\venable\2\vselect\1\0\0\aiL\1\0\15\aib\17@block.inner\aif\20@function.inner\aaf\20@function.outer\aal\16@loop.outer\ail\16@loop.inner\ais\21@statement.inner\aab\17@block.outer\aim\16@call.inner\aic\23@conditional.inner\aam\16@call.outer\aac\23@conditional.outer\aad\19@comment.outer\aiC\17@class.inner\aas\21@statement.outer\aaC\17@class.outer\1\0\4\tjava#(method_declaration) @function\6c$(function_definition) @function\vpython$(function_definition) @function\bcpp$(function_definition) @function\1\0\1\venable\2\rrefactor\15navigation\1\0\2\20goto_definition\bgnd\21list_definitions\bgnD\1\0\1\venable\2\17smart_rename\1\0\1\17smart_rename\bgnr\1\0\1\venable\2\26highlight_definitions\1\0\0\1\0\1\venable\2\26incremental_selection\fkeymaps\1\0\4\22scope_incremental\bgns\21node_incremental\bgnn\21node_decremental\bgnp\19init_selection\bgni\1\0\1\venable\2\14highlight\1\0\1\venable\2\frainbow\1\0\1\21ensure_installed\15maintained\fdisable\1\2\0\0\tbash\1\0\1\venable\2\nsetup\28nvim-treesitter.configs\frequire\0" },
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
      ["nvim-compe"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/home/tramhao/.local/share/nvim/site/pack/packer/opt/vim-vsnip"
  },
  ["vim-vsnip-integ"] = {
    after_files = { "/home/tramhao/.local/share/nvim/site/pack/packer/opt/vim-vsnip-integ/after/plugin/vsnip_integ.vim" },
    load_after = {
      ["nvim-compe"] = true
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

-- Setup for: glow.nvim
try_loadstring("\27LJ\2\nm\0\0\6\0\a\0\t6\0\0\0009\0\1\0009\0\2\0'\2\3\0'\3\4\0'\4\5\0005\5\6\0B\0\5\1K\0\1\0\1\0\2\fnoremap\2\vsilent\2\14:Glow<CR>\14<Leader>p\6n\20nvim_set_keymap\bapi\bvim\0", "setup", "glow.nvim")
-- Setup for: wiki.vim
try_loadstring("\27LJ\2\n˛\2\0\0\4\0\f\0\0236\0\0\0009\0\1\0'\1\3\0=\1\2\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\1\0=\1\6\0006\0\0\0009\0\1\0'\1\b\0=\1\a\0006\0\0\0009\0\t\0009\0\n\0'\2\v\0+\3\1\0B\0\3\1K\0\1\0≥\1      function! MyFunction(text) abort\n         return substitute(tolower(a:text), '\\s\\+', '-', 'g')\n      endfunction\n\n      let g:wiki_map_link_create = 'MyFunction'\n      \14nvim_exec\bapi\amd\26wiki_link_target_type\22wiki_write_on_nav\1\2\0\0\amd\19wiki_filetypes\16~/Sync/wiki\14wiki_root\6g\bvim\0", "setup", "wiki.vim")
-- Config for: kommentary
try_loadstring("\27LJ\2\n´\1\0\0\4\0\5\0\b6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0005\3\4\0B\0\3\1K\0\1\0\1\0\3\31use_consistent_indentation\2 prefer_single_line_comments\2\22ignore_whitespace\2\fdefault\23configure_language\22kommentary.config\frequire\0", "config", "kommentary")
-- Config for: rainbow
try_loadstring("\27LJ\2\n{\0\0\4\0\b\0\0156\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\3\0)\1\1\0=\1\4\0006\0\0\0009\0\5\0009\0\6\0'\2\a\0+\3\1\0B\0\3\1K\0\1\0\v      \14nvim_exec\bapi\19rainbow_active\6g\14syntax on\bcmd\bvim\0", "config", "rainbow")
-- Config for: lualine.nvim
try_loadstring("\27LJ\2\nª\3\0\0\5\0\24\0%6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\a\0005\4\6\0=\4\b\0035\4\t\0=\4\n\0035\4\v\0=\4\f\0035\4\r\0=\4\14\0035\4\15\0=\4\16\0035\4\17\0=\4\18\3=\3\19\0025\3\20\0004\4\0\0=\4\b\0034\4\0\0=\4\n\0035\4\21\0=\4\f\0035\4\22\0=\4\14\0034\4\0\0=\4\16\0034\4\0\0=\4\18\3=\3\23\2B\0\2\1K\0\1\0\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rfilename\1\0\0\rsections\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\2\0\0\rfilename\14lualine_b\1\2\0\0\vbranch\14lualine_a\1\0\0\1\2\0\0\tmode\foptions\1\0\0\1\0\3\18icons_enabled\2\ntheme\fdracula\14separator\6|\nsetup\flualine\frequire\0", "config", "lualine.nvim")
-- Config for: nvim-monokai
try_loadstring("\27LJ\2\n0\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\17colo monokai\bcmd\bvim\0", "config", "nvim-monokai")
-- Config for: vim-sneak
try_loadstring("\27LJ\2\n`\0\0\3\0\4\0\t6\0\0\0009\0\1\0'\2\2\0B\0\2\0016\0\0\0009\0\1\0'\2\3\0B\0\2\1K\0\1\0\27let g:sneak#s_next = 1\26let g:sneak#label = 1\bcmd\bvim\0", "config", "vim-sneak")

-- Command lazy-loads
vim.cmd [[command! -nargs=* -range -bang -complete=file StartupTime lua require("packer.load")({'startuptime.vim'}, { cmd = "StartupTime", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file TSInstall lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSInstall", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file TSBufEnable lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSBufEnable", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file TSEnableAll lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSEnableAll", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file TSModuleInfo lua require("packer.load")({'nvim-treesitter'}, { cmd = "TSModuleInfo", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file ColorizerDetachFromBuffer lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerDetachFromBuffer", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file ColorizerReloadAllBuffers lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerReloadAllBuffers", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file ColorizerToggle lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file ColorizerAttachToBuffer lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerAttachToBuffer", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]
vim.cmd [[command! -nargs=* -range -bang -complete=file WikiIndex lua require("packer.load")({'wiki.vim'}, { cmd = "WikiIndex", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args> }, _G.packer_plugins)]]

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
vim.cmd [[au FileType sh ++once lua require("packer.load")({'vim-go', 'nvim-treesitter', 'nvim-compe'}, { ft = "sh" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'vim-go', 'nvim-treesitter', 'nvim-compe'}, { ft = "go" }, _G.packer_plugins)]]
vim.cmd [[au FileType c ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "c" }, _G.packer_plugins)]]
vim.cmd [[au FileType lua ++once lua require("packer.load")({'vim-go', 'nvim-treesitter', 'nvim-compe'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType typescript ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "typescript" }, _G.packer_plugins)]]
vim.cmd [[au FileType cpp ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "cpp" }, _G.packer_plugins)]]
vim.cmd [[au FileType python ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "python" }, _G.packer_plugins)]]
vim.cmd [[au FileType java ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "java" }, _G.packer_plugins)]]
vim.cmd [[au FileType json ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "json" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'vim-markdown', 'nvim-treesitter', 'glow.nvim'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType md ++once lua require("packer.load")({'vim-go', 'vim-markdown', 'glow.nvim', 'nvim-compe'}, { ft = "md" }, _G.packer_plugins)]]
vim.cmd [[au FileType bash ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "bash" }, _G.packer_plugins)]]
vim.cmd [[au FileType zsh ++once lua require("packer.load")({'vim-go', 'nvim-treesitter', 'nvim-compe'}, { ft = "zsh" }, _G.packer_plugins)]]
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
