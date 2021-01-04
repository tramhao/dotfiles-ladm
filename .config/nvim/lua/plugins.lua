local install_path = vim.fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
  vim.api.nvim_command('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end

-- function wikilink(text)
--   text1 = string.lower(text)
--   text2 = string.gsub(text1," ","-")
--   return text2
-- end

return require('packer').startup(
  function()
    use 'wbthomason/packer.nvim'

    -- use {'cideM/yui', branch = 'v2'} -- dark visual selection
    -- use 'junegunn/seoul256.vim'
    -- use 'jnurmine/Zenburn'
    -- use 'co1ncidence/sunset.vim'

    -- use 'liuchengxu/vim-clap'
    -- use 'junegunn/fzf'
    -- use 'junegunn/fzf.vim'

    -- use 'tpope/vim-commentary'
    -- use 'machakann/vim-sandwich'
    -- use '9mm/vim-closer'
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

    -- use 'editorconfig/editorconfig-vim'
    -- use 'mhinz/vim-signify'
    -- use 'tpope/vim-fugitive'

    -- use {'RRethy/vim-hexokinase', run = 'make hexokinase'}
    -- use 'lifepillar/vim-colortemplate'


    -- use 'tpope/vim-surround'
    use 'tpope/vim-commentary'
    use 'jiangmiao/auto-pairs'
    use 'machakann/vim-sandwich'
    use 'easymotion/vim-easymotion'
    -- use 'unblevable/quick-scope'
    use {'lervag/wiki.vim', 
    config = function ()
            vim.g.wiki_root = "~/Sync/wiki"
            vim.g.wiki_filetypes = {"md"}
            vim.g.wiki_write_on_nav = 1
            -- vim.g.wiki_map_link_create = wikilink
           end
        }
    use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install', cmd = 'MarkdownPreview'}
    use 'godlygeek/tabular'
    use 'plasticboy/vim-markdown'
    use 'vim-pandoc/vim-pandoc-syntax'
    use {'sainnhe/sonokai',
      config = function ()
        vim.g.sonokai_style = 'maia'
        vim.g.sonokai_enable_italic = 1
        vim.g.sonokai_disable_italic_comment = 0
        vim.g.sonokai_transparent_background = 1
        vim.cmd('colo sonokai')
      end
    }
    use {'luochen1990/rainbow',
      config = function ()
        vim.g.rainbow_active = 1
        vim.cmd('syntax on')
      end
    }

    use 'ap/vim-css-color'
    use 'sheerun/vim-polyglot'

  end
)