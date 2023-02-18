local lsp_status_ok, lsp = pcall(require, 'lsp-zero')
if not lsp_status_ok then
    print('Lsp problem')
end

-- Default stuff --
lsp.preset({
    name = 'minimal',
    set_lsp_keymaps = true,
    manage_nvim_cmp = true,
    suggest_lsp_servers = true,
})

lsp.configure('lua_ls', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})
-- Default servers --
lsp.ensure_installed({
    'tsserver',
    'eslint',
    'lua_ls',
})

-- Setup lsp completion --
local setup_competion = require("ky3ow.lsp.completion").setup;
setup_competion(lsp)

-- Lsp keybindings --
lsp.on_attach(function(_, bufnr)
    local opts = { buffer = bufnr, remap = false, silent = true }

    vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, opts)
    vim.keymap.set("n", "gl", function() vim.diagnostic.open_float() end, opts)
    vim.keymap.set("n", "gj", function() vim.diagnostic.goto_next() end, opts)
    vim.keymap.set("n", "gk", function() vim.diagnostic.goto_prev() end, opts)
    vim.keymap.set("n", "<leader>la", function() vim.lsp.buf.code_action() end, opts)
    vim.keymap.set("n", "<leader>lr", function() vim.lsp.buf.rename() end, opts)
    vim.keymap.set("", "<leader>lf", function() vim.lsp.buf.format({ async = true }) end, opts)
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
    vim.keymap.set("i", "<C-k>", function() vim.lsp.buf.signature_help() end, opts)
end)

-- Sidebar icons --
lsp.set_preferences({
    sign_icons = {
        error = ' ',
        warn = ' ',
        hint = ' ',
        info = ' '
    },
    float = {
        focusable = false,
        style = "minimal"
    }
})

lsp.setup()

vim.diagnostic.config({
    virtual_text = true,
    update_in_insert = true,
})
