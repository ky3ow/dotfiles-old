local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        "--branch=stable", -- latest stable release
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
-- Safe load --
local status_ok, lazy = pcall(require, "lazy")
if not status_ok then
    print("Lazy.nvim didn't install")
    return
end

lazy.setup({
    {
        "ishan9299/nvim-solarized-lua",
        lazy = false,
        priority = 1000,
        config = function()
            vim.cmd("colorscheme solarized-flat")
        end
    },
    { 'rose-pine/neovim',         name = 'rose-pine' },
    { 'tjdevries/colorbuddy.nvim' },
    {
        "nvim-lua/popup.nvim",
    },

    --** Lsp + autocomplete **--
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        lazy = false,
        dependencies = {
            -- LSP --
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },
            -- Completion --
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lua' },
            -- Snippets --
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    },

    --** File finder **--
    {
        'nvim-telescope/telescope.nvim',
        version = '0.1.1',
        dependencies = {
            {
                'nvim-lua/plenary.nvim',
            },
            {
                'duane9/nvim-rg'
            }
        }
    },
    -- Thing to make native fuzzy finder algo work?
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
            return vim.fn.executable 'make' == 1
        end,
    },

    --** Tree sitter(syntax highlight) **--
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },
    --|> Treesitter plugins <|--
    { 'nvim-treesitter/playground',                  dependencies = { 'nvim-treesitter/nvim-treesitter' } },
    -- Rainbow brackets
    { 'mrjones2014/nvim-ts-rainbow',                 dependencies = { 'nvim-treesitter/nvim-treesitter', } },
    -- Rainbow indents
    { 'lukas-reineke/indent-blankline.nvim',         dependencies = { 'nvim-treesitter/nvim-treesitter', } },
    -- Better objects
    { 'nvim-treesitter/nvim-treesitter-textobjects', dependencies = { 'nvim-treesitter/nvim-treesitter', } },
    -- Autopair brackets and tags
    {
        "windwp/nvim-autopairs",
        config = function()
            local autopairs = require('nvim-autopairs')
            autopairs.setup {
                check_ts = true,
                disable_in_visualblock = true,
                enable_bracket_in_quote = false,
            }
        end,
        dependencies = { 'nvim-treesitter/nvim-treesitter' }
    },
    { "windwp/nvim-ts-autotag", dependencies = { 'nvim-treesitter/nvim-treesitter' } },

    -- Pets?? --
    --{
    --    "giusgad/pets.nvim",
    --    dependencies = { "MunifTanjim/nui.nvim", "edluffy/hologram.nvim" },
    --},

    --** Show first letters on find **--
    {
        'jinh0/eyeliner.nvim',
    },
    --** Colors **--
    {
        'uga-rosa/ccc.nvim'
    },
    --** Surround **--
    {
        "kylechui/nvim-surround",
        version = "*", -- Use for stability; omit to use `main` branch for the latest features
        event = "VeryLazy",
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    }
})
