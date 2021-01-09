local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[ autocmd BufWritePost plugins.lua PackerCompile ]]

return require('packer').startup(
  function()
    use { 'wbthomason/packer.nvim' }

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

    use 'nvim-treesitter/nvim-treesitter-textobjects'
    use {'nvim-treesitter/nvim-treesitter', config=require'plugins.nvim-treesitter' }

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
    use 'tpope/vim-commentary'
    use 'jiangmiao/auto-pairs'
    -- use '9mm/vim-closer'
    -- use 'machakann/vim-sandwich'
    use {'justinmk/vim-sneak',
        config = function()
          vim.cmd('let g:sneak#label = 1')
          vim.cmd('let g:sneak#s_next = 1')
        end
  }
    use {'lervag/wiki.vim', 
    config = function ()
            vim.g.wiki_root = "~/Sync/wiki"
            vim.g.wiki_filetypes = {"md"}
            vim.g.wiki_write_on_nav = 1
            vim.g.wiki_link_target_type = 'md'
            -- vim.g.wiki_map_link_create = wikilink('text')
            vim.api.nvim_exec(
            [[
            function MyFunction(text) abort
               return substitute(tolower(a:text), '\s\+', '-', 'g')
            endfunction

            let g:wiki_map_link_create = 'MyFunction'
            ]],
            false)
           end,
    -- ft = 'arkdown',
        }
        use {
          'npxbr/glow.nvim',
          run = ':GlowInstall',
          config = function()
            vim.api.nvim_set_keymap('n', '<Leader>p',':Glow<CR>', {noremap = true, silent = true })
          end
        }
    use {'plasticboy/vim-markdown',
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
    use 'tweekmonster/startuptime.vim'
  end
)
