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

    -- use 'nvim-treesitter/nvim-treesitter'
    -- use 'nvim-treesitter/nvim-treesitter-textobjects'

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
    use {'easymotion/vim-easymotion',
    config = function ()
            vim.g.EasyMotion_do_mapping = 0 -- Disable default mappings

--  Jump to anywhere you want with minimal keystrokes, with just one key binding.
--  `s{char}{label}`
            -- vim.api.nvim_set_keymap('n', 's','<Plug>(easymotion-overwin-f)', {noremap = true, silent = true })
            -- vim.cmd [[nmap s <Plug>(easymotion-overwin-f)]]
-- or
-- `s{char}{char}{label}`
-- Need one more keystroke, but on average, it may be more comfortable.
            -- vim.api.nvim_set_keymap('n', 's','<Plug>(easymotion-overwin-f2)', {noremap = true, silent = true })
            vim.cmd [[nmap s <Plug>(easymotion-overwin-f2)]]
-- Turn on case-insensitive feature
            vim.g.EasyMotion_smartcase = 1

-- JK motions: Line motions
            -- vim.api.nvim_set_keymap('', '<Leader>j','<Plug>(easymotion-j)', {noremap = true})
            vim.cmd [[map <Leader>j <Plug>(easymotion-j)]]
            vim.cmd [[map <Leader>k <Plug>(easymotion-k)]]
            -- vim.api.nvim_set_keymap('', '<Leader>j','<Plug>(easymotion-j)', {noremap = true, silent = true })
            -- vim.api.nvim_set_keymap('', '<Leader>k','<Plug>(easymotion-k)', {noremap = true, silent = true })
    end
  }
  
    -- use 'unblevable/quick-scope'
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
    use {
      'hoob3rt/lualine.nvim',
     requires = {'kyazdani42/nvim-web-devicons', opt = true},
     config = function()
      local lualine = require('lualine')
      lualine.theme = 'dracula'
      lualine.separator = '|'
      lualine.sections = {
        lualine_a = { 'mode' },
        lualine_b = { 'branch' },
        lualine_c = { 'filename' },
        lualine_x = { 'encoding', 'fileformat', 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = { 'location'  },
      }
      lualine.inactive_sections = {
        lualine_a = {  },
        lualine_b = {  },
        lualine_c = { 'filename' },
        lualine_x = { 'location' },
        lualine_y = {  },
        lualine_z = {   }
      }
      -- lualine.extensions = { 'fzf' }
      lualine.status()
    end   }
   -- use { 'datwaft/bubbly.nvim', branch = 'development' }
    -- use {'datwaft/bubbly.nvim', config = function()
     --   -- Here you can add the configuration for the plugin
     --   vim.g.bubbly_palette = {
     --      background = "#34343c",
     --      foreground = "#c5cdd9",
     --      black = "#3e4249",
     --      red = "#ec7279",
     --      green = "#a0c980",
     --      yellow = "#deb974",
     --      blue = "#6cb6eb",
     --      purple = "#d38aea",
     --      cyan = "#5dbbc1",
     --      white = "#c5cdd9",
     --      lightgrey = "#57595e",
     --      darkgrey = "#404247",
     --   }
     --  end}
     use 'tweekmonster/startuptime.vim'
  end
)
