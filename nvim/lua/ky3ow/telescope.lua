local telescope = require('telescope')
-- https://github.com/nvim-telescope/telescope.nvim#telescope-setup-structure --

-- Mappings --
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>fd', function() builtin.diagnostics({ bufnr = 0 }) end, {})
vim.keymap.set('n', '<leader>fD', builtin.diagnostics, {})
vim.keymap.set('n', 'gs', builtin.lsp_document_symbols, {})
vim.keymap.set('n', 'gS', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', 'gd', builtin.lsp_definitions, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
vim.keymap.set('n', 'gi', builtin.lsp_implementations, {})
