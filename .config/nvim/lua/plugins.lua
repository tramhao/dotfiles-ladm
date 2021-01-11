
local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then
    if vim.fn.input("Download Packer? (y for yes)") ~= "y" then
        return
    end

    local directory = string.format("%s/site/pack/packer/opt/", vim.fn.stdpath("data"))

    vim.fn.mkdir(directory, "p")

    local out =
        vim.fn.system(
        string.format("git clone %s %s", "https://github.com/wbthomason/packer.nvim", directory .. "/packer.nvim")
    )

    print(out)
    print("Downloading packer.nvim...")

    return
end
-- Only required if you have packer in your `opt` pack
vim.cmd [[packadd packer.nvim]]

vim.cmd [[ autocmd BufWritePost plugins.lua PackerCompile ]]
local packer = require("packer")
packer.startup(
  function(use)
    use { 'wbthomason/packer.nvim', opt = true }

    -- use {'cideM/yui', branch = 'v2'} -- dark visual selection
    -- use 'junegunn/seoul256.vim'
    -- use 'jnurmine/Zenburn'
    -- use 'co1ncidence/sunset.vim'

    -- use 'liuchengxu/vim-clap'
    -- use 'junegunn/fzf'
    -- use 'junegunn/fzf.vim'

    -- use 'tpope/vim-commentary'
    -- use 'machakann/vim-sandwich'
    -- use 'romainl/vim-cool'
    -- use 'justinmk/vim-sneak'

    -- use 'axvr/org.vim'

    -- use 'MaxMEllon/vim-jsx-pretty'
    -- use {'prettier/vim-prettier', run = 'yarn install'}

    use {'nvim-treesitter/nvim-treesitter-textobjects', opt = true, after = {"nvim-treesitter"} }
    -- use {'p00f/nvim-ts-rainbow', opt = true, after = {"nvim-treesitter"} }
    -- use {'p00f/nvim-ts-rainbow', after = {"nvim-treesitter"} }
    use {
            "nvim-treesitter/nvim-treesitter",
            cmd = {"TSInstall", "TSBufEnable", "TSEnableAll", "TSModuleInfo"},
            ft = {"cpp", "c", "python", "java", "lua", "json", "markdown", "typescript", "bash", "zsh"},
            config = require'configplugin.treesitter',
        }   
    -- use 'prabirshrestha/vim-lsp'
    -- use 'mattn/vim-lsp-settings'
    use {'neovim/nvim-lspconfig', opt = true, after = {"nvim-treesitter"}, config = require('configplugin.lsp')}
    
    use {'nvim-lua/completion-nvim', config=require('configplugin.completion-nvim'),
      ft = {'lua','md'},
  }
    -- use {'weilbith/nvim-lsp-bacomp'; opt=true }
    -- use {'weilbith/nvim-lsp-smag'; opt=true }
    -- use 'SirVer/ultisnips'
    -- use 'honza/vim-snippets'

    -- use 'edorconfig/editorconfig-vim'
    -- use 'mhinz/vim-signify'
    -- use 'tpope/vim-fugitive'

    -- use {'RRethy/vim-hexokinase', run = 'make hexokinase'}
    -- use 'lifepillar/vim-colortemplate'


    -- use 'tpope/vim-surround'
    use { 'tpope/vim-commentary'; opt = true; keys = {{'n'; 'gcc'}; {'x'; 'gc'}; {'o'; 'gc'}; {'n'; 'gc'}}; };   
    -- use 'jiangmiao/auto-pairs'
    --use {
    --        "jiangmiao/auto-pairs",
    --        --TODO: Fix double quote autoloading
    --        keys = {{"i", "("}, {"i", "["}, {"i", "<"}, {"i", "'"}, {"i", "{"}},
    --        config = function()
    --            vim.call("AutoPairsTryInit")
    --        end
    --    }
    use {
                "windwp/nvim-autopairs",
                --TODO: Fix double quote autoloading
                keys = {{"i", "("}, {"i", "["}, {"i", "<"}, {"i", "'"}, {"i", "{"},{"i", '"'}},
                config = function()
                  require('nvim-autopairs').setup()
                end
            }

    -- use '9mm/vim-closer'
    -- use 'machakann/vim-sandwich'
    use {'justinmk/vim-sneak',
        config = function()
          vim.cmd('let g:sneak#label = 1')
          vim.cmd('let g:sneak#s_next = 1')
        end
  }
    use {'lervag/wiki.vim', opt = true, setup = require'configplugin.wiki', cmd = {'WikiIndex'} }
    use {
      'npxbr/glow.nvim',
      -- run = ':GlowInstall',
      ft = {'markdown','md'},
      -- keys = '<Leader>p',
      setup = function()
        vim.api.nvim_set_keymap('n', '<Leader>p',':Glow<CR>', {noremap = true, silent = true })
      end
    }
    use {'plasticboy/vim-markdown',
      ft = {'markdown','md'},
      config = function ()
        vim.g.vim_markdown_folding_disabled = 1
        vim.g.vim_markdown_conceal = 2
        vim.g.tex_conceal = ""
        vim.g.vim_markdown_math = 1
      end
    }
    use {"tjdevries/gruvbuddy.nvim", 
    requires = {"tjdevries/colorbuddy.vim"},
    config = function ()
      -- vim.cmd('colo darkblue')
      require('colorbuddy').colorscheme('gruvbuddy')
      -- vim.cmd('colo gruvbuddy')
    end
  }
    -- use {'luochen1990/rainbow',
    --   config = function ()
    --     vim.g.rainbow_active = 1
    --     vim.cmd('syntax on')
    --   end
    -- }
    use {'norcalli/nvim-colorizer.lua',
      cmd = {
                "ColorizerDetachFromBuffer",
                "ColorizerReloadAllBuffers",
                "ColorizerToggle",
                "ColorizerAttachToBuffer"
            },     
      config = function ()
        require 'colorizer'.setup()
	    end
  }
    use { 'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true},
     -- event = {"FocusLost *", "CursorHold *"},
     config =  require'configplugin.lualine',
  }
    use {'tweekmonster/startuptime.vim', opt = true, cmd = 'StartupTime'}
  end
)
