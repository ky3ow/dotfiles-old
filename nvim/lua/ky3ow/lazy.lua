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
    -- Best color scheme --
    {
        "EdenEast/nightfox.nvim",
        lazy = false,
        priority = 1000,
        config = function()
            require('nightfox').setup({
                options = {
                    transparent = true
                }
            })
            vim.cmd('colorscheme terafox')
        end
    },
    {
        "nvim-lua/popup.nvim",
    },
    -- Lsp + autocomplete --
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
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
    -- File finder --
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
    -- Tree sitter(syntax highlight) --
    {
        'nvim-treesitter/nvim-treesitter',
        build = ':TSUpdate',
    },
    -- Rainbow brackets
    { 'mrjones2014/nvim-ts-rainbow' },
    -- Rainbow indents
    { 'lukas-reineke/indent-blankline.nvim' },

    -- Pets?? --
    {
        "giusgad/pets.nvim",
        dependencies = { "MunifTanjim/nui.nvim", "edluffy/hologram.nvim" },
    }
})
