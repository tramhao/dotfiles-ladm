return function()
  local system_name
if vim.fn.has("mac") == 1 then
  system_name = "macOS"
elseif vim.fn.has("unix") == 1 then
  system_name = "Linux"
elseif vim.fn.has('win32') == 1 then
  system_name = "Windows"
else
  print("Unsupported system for sumneko")
end

-- set the path to the sumneko installation; if you previously installed via the now deprecated :LspInstall, use
local sumneko_root_path = '/usr/share/lua-language-server'
local sumneko_binary = "/usr/bin/lua-language-server"
local completion = require('completion')

  local nvim_lsp = require('lspconfig')
  local map = function(type, key, value)
    vim.fn.nvim_buf_set_keymap(0,type,key,value,{noremap = true, silent = true});
  end
  local on_attach = function(client, bufnr)

    if client.config.flags then
      client.config.flags.allow_incremental_sync = true
    end


    completion.on_attach(client, bufnr)


    -- Keybindings for LSPs
    -- vim.fn.nvim_set_keymap("n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", {noremap = true, silent = true})
    -- vim.fn.nvim_set_keymap("n", "<leader>ge", "<cmd>lua vim.lsp.buf.declaration()<CR>", {noremap = true, silent = true})
    -- vim.fn.nvim_set_keymap("n", "<leader>gh", "<cmd>lua vim.lsp.buf.hover()<CR>", {noremap = true, silent = true})
    -- vim.fn.nvim_set_keymap("n", "<leader>gf", "<cmd>lua vim.lsp.buf.formatting()<CR>", {noremap = true, silent = true})
    -- vim.fn.nvim_set_keymap("n", "<leader>gi", "<cmd>lua vim.lsp.buf.implementation()<CR>", {noremap = true, silent = true})
    -- vim.fn.nvim_set_keymap("n", "<c-k>", "<cmd>lua vim.lsp.buf.signature_help()<CR>", {noremap = true, silent = true})
    -- vim.fn.nvim_set_keymap("n", "<leader>gy", "<cmd>lua vim.lsp.buf.type_definition()<CR>", {noremap = true, silent = true})
    -- vim.fn.nvim_set_keymap("n", "<leader>gr", "<cmd>lua vim.lsp.buf.references()<CR>", {noremap = true, silent = true})
    -- vim.fn.nvim_set_keymap("n", "<leader>gt", "<cmd>lua vim.lsp.buf.document_symbol()<CR>", {noremap = true, silent = true})
    -- vim.fn.nvim_set_keymap("n", "<leader>gw", "<cmd>lua vim.lsp.buf.workspace_symbol()<CR>", {noremap = true, silent = true})
    -- vim.fn.nvim_set_keymap("n", "<leader>rn", "<cmd>lua vim.lsp.buf.rename()<CR>", {noremap = true, silent = true})
    -- vim.fn.nvim_set_keymap("n", "<a-.>", "<cmd>lua vim.lsp.buf.code_action()<CR>", {noremap = true, silent = true})
    -- vim.api.nvim_command('setlocal omnifunc=v:lua.vim.lsp.omnifunc')
    print("LSP started.");
    map('n','gD','<cmd>lua vim.lsp.buf.declaration()<CR>')
    map('n','gd','<cmd>lua vim.lsp.buf.definition()<CR>')
    map('n','K','<cmd>lua vim.lsp.buf.hover()<CR>')
    map('n','gr','<cmd>lua vim.lsp.buf.references()<CR>')
    map('n','gs','<cmd>lua vim.lsp.buf.signature_help()<CR>')
    map('n','gi','<cmd>lua vim.lsp.buf.implementation()<CR>')
    map('n','gt','<cmd>lua vim.lsp.buf.type_definition()<CR>')
    map('n','<leader>gw','<cmd>lua vim.lsp.buf.document_symbol()<CR>')
    map('n','<leader>gW','<cmd>lua vim.lsp.buf.workspace_symbol()<CR>')
    map('n','<leader>ah','<cmd>lua vim.lsp.buf.hover()<CR>')
    map('n','<leader>af','<cmd>lua vim.lsp.buf.code_action()<CR>')
    map('n','<leader>ee','<cmd>lua vim.lsp.util.show_line_diagnostics()<CR>')
    map('n','<leader>ar','<cmd>lua vim.lsp.buf.rename()<CR>')
    map('n','<leader>=', '<cmd>lua vim.lsp.buf.formatting()<CR>')
    map('n','<leader>ai','<cmd>lua vim.lsp.buf.incoming_calls()<CR>')
    map('n','<leader>ao','<cmd>lua vim.lsp.buf.outgoing_calls()<CR>')
  end
   nvim_lsp.bashls.setup{
       cmd = {"/usr/bin/bash-language-server", "start"},
       filetype = {"sh"},
       root_dir = nvim_lsp.util.root_pattern('.git');
       on_attach = on_attach,
   }
   nvim_lsp.clangd.setup{
       on_attach = on_attach,
       capabilities = {
          textDocument = {
            completion = {
             completionItem = {
               snippetSupport=true
             }
            }
          }
       },
       init_options = {
           usePlaceholders = true,
           completeUnimported = true,
           clangdFileStatus = true
       }
     }


  nvim_lsp.jedi_language_server.setup{
    on_attach=on_attach,
    init_options = {
      disableSnippets = false,
    },
    capabilities = {
       textDocument = {
         completion = {
          completionItem = {
            snippetSupport=true
          }
         }
       }
    },
  }

  nvim_lsp.sumneko_lua.setup{
        cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"},
        on_attach = on_attach,
        capabilities = {
          textDocument = {
            completion = {
              completionItem = {
                snippetSupport=true
              }
            }
          }
        },
        settings = {
          Lua = {
            completion= {
              keywordSnippet= "Enable",
              callSnippet="Both"
            },
            runtime = {
              -- Tell the language server which version of Lua you're using (LuaJIT in the case of Neovim)
              version = 'LuaJIT',
              -- Setup your lua path
              -- path = vim.split(package.path, ';'),
            },
            diagnostics = {
              -- Get the language server to recognize the `vim` global
              globals = {'vim', 'use'},
            },
            workspace = {
              -- Make the server aware of Neovim runtime files
              library = {
                [vim.fn.expand('$VIMRUNTIME/lua')] = true,
                [vim.fn.expand('$VIMRUNTIME/lua/vim/lsp')] = true,
              },
            },
          }
    }
  }

  nvim_lsp.vimls.setup{
    on_attach = on_attach,
  }
  nvim_lsp.tsserver.setup{
    on_attach = on_attach,
  }

  nvim_lsp.html.setup{
    cmd = {"vscode-html-language-server", "--stdio"},
    on_attach = on_attach,
    capabilities = {
         textDocument = {
             completion = {
                 completionItem = {
                     snippetSupport = true
                 }
             }
         }
    }
  }

  nvim_lsp.cssls.setup{
    cmd = {"vscode-css-language-server", "--stdio"},
    on_attach = on_attach,
    settings = {
      css = {
        validate = false
      },
      less = {
        validate = true
      },
      scss = {
        validate = true
      }
    },
    capabilities = {
         textDocument = {
             completion = {
                 completionItem = {
                     snippetSupport = true
                 }
             }
         }
    }
  }

  nvim_lsp.gdscript.setup{
    on_attach=on_attach,
    godot = {
      host = "127.0.0.1",
      filetypes = {"gd", "gdscript"},
      port = 6008
    }
  }

  -- stolen from https://github.com/fsouza/vimfiles
  local get_python_tool = function(bin_name)
    local result = bin_name
    if os.getenv('VIRTUAL_ENV') then
      local venv_bin_name = os.getenv('VIRTUAL_ENV') .. '/bin/' .. bin_name
      if vim.fn.executable(venv_bin_name) == 1 then
        result = venv_bin_name
      end
    end
    return result
  end

  -- maybe switch to efm-language-server in the future
  nvim_lsp.diagnosticls.setup{
    filetypes={'javascript', 'python', 'markdown'},
    init_options = {
      linters = {
        flake8 = {
          command = get_python_tool('flake8');
          args = {'--stdin-display-name'; '%filepath'; '-'};
          sourceName = 'flake8';
          debounce = 250;
          formatLines = 1;
          formatPattern = {'^[^:]+:(\\d+):((\\d+):)?\\s+(.+)$';
          {line = 1; column = 3; message = 4}};
          rootPatterns = {''};
        },
        eslint = {
          command = './node_modules/.bin/eslint',
          rootPatterns = {'.git'},
          debounce = 100,
          args = {
            '--stdin',
            '--stdin-filename',
            '%filepath',
            '--format',
            'json'
          },
          sourceName = 'eslint',
          parseJson = {
            errorsRoot = '[0].messages',
            line = 'line',
            column = 'column',
            endLine = 'endLine',
            endColumn = 'endColumn',
            message = '${message} [${ruleId}]',
            security = 'severity'
          },
          securities = {
            [2] = 'error',
            [1] = 'warning',
          },
        },
        markdownlint = {
          command = 'markdownlint',
          rootPatterns = { '.git' },
          isStderr = true,
          debounce = 100,
          args = { '--stdin' },
          offsetLine = 0,
          offsetColumn = 0,
          sourceName = 'markdownlint',
          securities = {
            undefined = 'hint'
          },
          formatLines = 1,
          formatPattern = {
            '^.*:(\\d+)\\s+(.*)$',
            {
              line = 1,
              column = -1,
              message = 2,
            }
          }
        },
      },
      filetypes = {
        javascript = 'eslint',
        python = 'flake8',
        markdown = 'markdownlint',
      },
      formatters = {
        prettier = {
          command = "./node_modules/.bin/prettier",
          args = {"--stdin-filepath" ,"%filepath", '--single-quote', '--print-width 120'}
        }
      },
      formatFiletypes = {
        javascript = "prettier"
      },
    }
  }

  -- doesn't work, somehow
  nvim_lsp.angularls.setup{
    on_attach = on_attach
  }
end
