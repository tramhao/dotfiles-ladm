local install_path = vim.fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
-- Only required if you have packer in your `opt` pack
vim.cmd [[packadd packer.nvim]]

vim.cmd [[ autocmd BufWritePost plugins.lua PackerCompile ]]

return require('packer').startup(
  function()
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

    use {'nvim-treesitter/nvim-treesitter-textobjects', opt = true }
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate', config=require'plugins.nvim-treesitter' }

    -- use 'neovim/nvim-lspconfig'
    -- use 'nvim-lua/completion-nvim'

    -- use 'SirVer/ultisnips'
    -- use 'honza/vim-snippets'

    -- use 'edorconfig/editorconfig-vim'
    -- use 'mhinz/vim-signify'
    -- use 'tpope/vim-fugitive'

    -- use {'RRethy/vim-hexokinase', run = 'make hexokinase'}
    -- use 'lifepillar/vim-colortemplate'


    -- use 'tpope/vim-surround'
    use { 'tpope/vim-commentary'; opt = true; keys = {{'n'; 'gcc'}; {'x'; 'gc'}; {'o'; 'gc'}; {'n'; 'gc'}}; };   
    use 'jiangmiao/auto-pairs'
    -- use '9mm/vim-closer'
    -- use 'machakann/vim-sandwich'
    use {'justinmk/vim-sneak',
        config = function()
          vim.cmd('let g:sneak#label = 1')
          vim.cmd('let g:sneak#s_next = 1')
        end
  }
    -- use {'lervag/wiki.vim', config = require'plugins.wiki' }
    use {'lervag/wiki.vim', opt = true, setup = require'plugins.wiki', cmd = {'WikiIndex'} }
    use {
      'npxbr/glow.nvim',
      run = ':GlowInstall',
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
    use {'luochen1990/rainbow',
      config = function ()
        vim.g.rainbow_active = 1
        vim.cmd('syntax on')
      end
    }
    use {'norcalli/nvim-colorizer.lua',
      config = function ()
        require 'colorizer'.setup()
	    end
  }
    use { 'hoob3rt/lualine.nvim', requires = {'kyazdani42/nvim-web-devicons', opt = true},
     config = require'plugins.lualine' }
    -- use {'tweekmonster/startuptime.vim'}
    use {'tweekmonster/startuptime.vim', opt = true, cmd = 'StartupTime'}
  end
)
