local packer_exists = pcall(vim.cmd, [[packadd packer.nvim]])

if not packer_exists then
    if vim.fn.input("Download Packer? (y for yes)") ~= "y" then
        return
    end

    local directory = string.format("%s/site/pack/packer/opt/", vim.fn.stdpath("data"))

    vim.fn.mkdir(directory, "p")

    local out = vim.fn.system(
        string.format("git clone %s %s", "https://github.com/wbthomason/packer.nvim", directory .. "/packer.nvim")
    )
    print(out)
    print("Downloading packer.nvim...")
    return
end
-- Only required if you have packer in your `opt` pack
vim.cmd("packadd packer.nvim")
vim.cmd("autocmd BufWritePost plugins.lua source <afile> | PackerCompile")

return require("packer").startup(function()
    use({ "wbthomason/packer.nvim", opt = true })
    use({ "nvim-treesitter/nvim-treesitter-textobjects", opt = true, after = { "nvim-treesitter" } })
    use({ "p00f/nvim-ts-rainbow" })
    -- use {'p00f/nvim-ts-rainbow', opt = true, after = {"nvim-treesitter"}}
    use({
        "windwp/nvim-autopairs",
        -- config = require('configplugin.autop'),
        config = require("configplugin.autopairs"),
    })
    use({
        "nvim-treesitter/nvim-treesitter",
        config = require("configplugin.treesitter"),
    })
    use({
        "neovim/nvim-lspconfig",
        requires = { "nvim-lua/lsp_extensions.nvim" },
        config = function()
            require("lsp")
            require("lsp.lua-ls")
            require("lsp.gopls")
            require("lsp.efm-ls")
            require("lsp.pyls")
            require("lsp.rust-ls")
        end,
    })
    use({ "tami5/lspsaga.nvim" })
    -- use({ "jasonrhansen/lspsaga.nvim", branch = "finder-preview-fixes" })
    -- use({
    -- 	"ms-jpq/coq_nvim",
    -- 	branch = "coq",
    -- 	config = function()
    -- 		vim.cmd("let g:coq_settings = { 'auto_start': v:true }")
    -- 		require("coq")
    -- 	end,
    -- })
    -- use({ "ms-jpq/coq.artifacts", branch = "artifacts" })
    -- use({ "ms-jpq/coq.thirdparty", branch = "3p" })
    -- use({
    -- 	"hrsh7th/nvim-compe",
    -- 	requires = { { "hrsh7th/vim-vsnip", opt = true }, { "hrsh7th/vim-vsnip-integ", opt = true } },
    -- 	config = require("configplugin.compe"),
    -- })
    use({
        "hrsh7th/nvim-cmp",
        requires = {
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-path",
            "hrsh7th/cmp-nvim-lua",
            "onsails/lspkind-nvim",
        },
        config = require("configplugin.cmp"),
    })
    use({
        "b3nj5m1n/kommentary",
        config = function()
            require("kommentary.config").configure_language("default", {
                prefer_single_line_comments = true,
                use_consistent_indentation = true,
                ignore_whitespace = true,
            })
        end,
    })
    use({
        "justinmk/vim-sneak",
        config = function()
            vim.cmd("let g:sneak#label = 1")
            vim.cmd("let g:sneak#s_next = 1")
        end,
    })
    use({ "lervag/wiki.vim", opt = true, setup = require("configplugin.wiki"), cmd = { "WikiIndex" } })
    use({
        "npxbr/glow.nvim",
        run = ":GlowInstall",
        ft = { "markdown", "md" },
        setup = function()
            vim.api.nvim_set_keymap("n", "<Leader>p", ":Glow<CR>", { noremap = true, silent = true })
        end,
    })
    use({
        "plasticboy/vim-markdown",
        ft = { "markdown", "md" },
        config = function()
            vim.g.vim_markdown_folding_disabled = 1
            vim.g.vim_markdown_conceal = 2
            vim.g.tex_conceal = ""
            vim.g.vim_markdown_math = 1
        end,
    })
    use({
        "norcalli/nvim-colorizer.lua",
        -- cmd = {
        -- 	"ColorizerDetachFromBuffer",
        -- 	"ColorizerReloadAllBuffers",
        -- 	"ColorizerToggle",
        -- 	"ColorizerAttachToBuffer",
        -- },
        config = function()
            require("colorizer").setup({
                "*",
            })
        end,
    })
    use({
        "nvim-lualine/lualine.nvim",
        requires = { { "kyazdani42/nvim-web-devicons" }, { "nvim-lua/lsp-status.nvim" } },
        config = require("configplugin.lualine"),
    })
    use({ "tweekmonster/startuptime.vim", opt = true, cmd = "StartupTime" })
    use({ "fatih/vim-go", ft = { "md", "zsh", "sh", "go" } })
    use({
        "nvim-telescope/telescope.nvim",
        requires = { { "nvim-lua/popup.nvim" }, { "nvim-lua/plenary.nvim" } },
        config = require("configplugin.telescope"),
    })
    use("bfredl/nvim-miniyank")
    -- use("Yggdroot/indentLine")
    use("simrat39/rust-tools.nvim")
    use({
        "lukas-reineke/indent-blankline.nvim",
        config = require("indent_blankline").setup({
            char = "┆",
            buftype_exclude = { "terminal" },
        }),
    })
    use({
        "romgrk/barbar.nvim",
        requires = { "kyazdani42/nvim-web-devicons" },
        config = function()
            require("configplugin.barbar")
        end,
    })
    use("elkowar/yuck.vim")
    use("alopatindev/cargo-limit")
    use({
        "tjdevries/colorbuddy.vim",
        config = function()
            require("colorbuddy").setup()
        end,
    })
    -- use({
    -- 	"romgrk/doom-one.vim",
    -- 	config = function()
    -- 		vim.cmd("colo doom-one")
    -- 	end,
    -- })
    -- use("Th3Whit3Wolf/onebuddy")
    -- use({ "tjdevries/gruvbuddy.nvim" })
    use({
        "jzelinskie/monokai-soda.vim",
        -- 	config = function()
        -- 		vim.cmd("colo monokai-soda")
        -- 	end,
    })
    -- use({ "soywod/himalaya", rtp = "vim" })
    --
    -- Add those lines after the `require('packer').startup(...)`
    -- to manually source the packer compiled file

    -- local packer_compiled = vim.fn.stdpath("config") .. "/plugin/packer_compiled.lua"
    -- vim.cmd("luafile" .. packer_compiled)
    use("alec-gibson/nvim-tetris")
    use("lewis6991/impatient.nvim")
end)
