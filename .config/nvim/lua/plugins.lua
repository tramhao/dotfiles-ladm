local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then
    if vim.fn.input("Download Packer? (y for yes)") ~= "y" then return end

    local directory = string.format("%s/site/pack/packer/opt/", vim.fn.stdpath("data"))

    vim.fn.mkdir(directory, "p")

    local out = vim.fn.system(string.format("git clone %s %s", "https://github.com/wbthomason/packer.nvim",
                                            directory .. "/packer.nvim"))
    print(out)
    print("Downloading packer.nvim...")

    return
end
-- Only required if you have packer in your `opt` pack
vim.cmd('packadd packer.nvim')

vim.cmd('autocmd BufWritePost plugins.lua PackerCompile')

return require("packer").startup(function()
    use {'wbthomason/packer.nvim', opt = true}
    use {'nvim-treesitter/nvim-treesitter-textobjects', opt = true, after = {"nvim-treesitter"}}
    use {'p00f/nvim-ts-rainbow', opt = true, after = {"nvim-treesitter"}}
    use {
        "nvim-treesitter/nvim-treesitter",
        config = require 'configplugin.treesitter'
    }
    use {
        'neovim/nvim-lspconfig',
        config = function()
            require 'lsp'
            require 'lsp.lua-ls'
            require 'lsp.gopls'
            require 'lsp.efm-ls'
            require 'lsp.pyls'
            require 'lsp.rust-ls'
        end
    }
    use {'glepnir/lspsaga.nvim'}
    use {
        'hrsh7th/nvim-compe',
        requires = {{'hrsh7th/vim-vsnip', opt = true}, {'hrsh7th/vim-vsnip-integ', opt = true}},
        config = require('configplugin.compe'),
    }
    use {
        'b3nj5m1n/kommentary',
        config = function()
            require('kommentary.config').configure_language("default", {
                prefer_single_line_comments = true,
                use_consistent_indentation = true,
                ignore_whitespace = true
            })
        end
    }
    use {
        'justinmk/vim-sneak',
        config = function()
            vim.cmd('let g:sneak#label = 1')
            vim.cmd('let g:sneak#s_next = 1')
        end
    }
    use {'lervag/wiki.vim', opt = true, setup = require 'configplugin.wiki', cmd = {'WikiIndex'}}
    use {
        'npxbr/glow.nvim',
        run = ':GlowInstall',
        ft = {'markdown', 'md'},
        setup = function()
            vim.api.nvim_set_keymap('n', '<Leader>p', ':Glow<CR>', {noremap = true, silent = true})
        end
    }
    use {
        'plasticboy/vim-markdown',
        ft = {'markdown', 'md'},
        config = function()
            vim.g.vim_markdown_folding_disabled = 1
            vim.g.vim_markdown_conceal = 2
            vim.g.tex_conceal = ""
            vim.g.vim_markdown_math = 1
        end
    }
    use {
        "tanvirtin/nvim-monokai",
        config = function()
            vim.cmd('colo monokai')
        end
    }
    use {
        'norcalli/nvim-colorizer.lua',
        cmd = {"ColorizerDetachFromBuffer", "ColorizerReloadAllBuffers", "ColorizerToggle", "ColorizerAttachToBuffer"},
        config = function()
            require'colorizer'.setup()
        end
    }
    use {
        'hoob3rt/lualine.nvim',
        requires = {{'kyazdani42/nvim-web-devicons', opt = true}, {'nvim-lua/lsp-status.nvim', opt = true}},
        config = require 'configplugin.lualine'
    }
    use {'tweekmonster/startuptime.vim', opt = true, cmd = 'StartupTime'}
    use {'fatih/vim-go', ft = {'lua', 'md', 'zsh', 'sh', 'go'}}
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}},
        config = require 'configplugin.telescope'
    }
    use 'bfredl/nvim-miniyank'
    use 'Yggdroot/indentLine'
    use { 'lukas-reineke/indent-blankline.nvim',
        -- config = function ()
        --     vim.g.indent_blankline_buftype_exclude = {'terminal'}
        --     vim.g.indent_blankline_filetype_exclude =
        --         {'help', 'startify', 'dashboard', 'packer', 'neogitstatus'}
        --     vim.g.indent_blankline_char = '▏'
        --     vim.g.indent_blankline_show_trailing_blankline_indent = false
        --     vim.g.indent_blankline_show_current_context = true
        --     vim.g.indent_blankline_context_patterns =
        --         {
        --             'class', 'return', 'function', 'method', '^if', '^while',
        --             'jsx_element', '^for', '^object', '^table', 'block', 'arguments',
        --             'if_statement', 'else_clause', 'jsx_element',
        --             'jsx_self_closing_element', 'try_statement', 'catch_clause',
        --             'import_statement', 'operation_type'
        --         }
        -- end
    }
end)
