local status_ok, telescope = pcall(require, 'telescope')
if not status_ok then
    print('telescope feels bad')
    return
end
-- https://github.com/nvim-telescope/telescope.nvim#telescope-setup-structure --

-- Actions --
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fG', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fgf', builtin.git_files, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>fc', builtin.oldfiles, {})
vim.keymap.set('n', '<leader>ld', function() builtin.diagnostics({ bufnr = 0 }) end, {})
vim.keymap.set('n', '<leader>lD', builtin.diagnostics, {})
vim.keymap.set('n', 'gs', builtin.lsp_document_symbols, {})
vim.keymap.set('n', 'gS', builtin.lsp_workspace_symbols, {})
vim.keymap.set('n', 'gd', builtin.lsp_definitions, {})
vim.keymap.set('n', 'gr', builtin.lsp_references, {})
vim.keymap.set('n', 'gi', builtin.lsp_implementations, {})

local actions = require('telescope.actions')
-- Remaps --
telescope.setup({
    defaults = {
        mappings = {
            i = {
                ['<esc>'] = actions.close,
                ['<C-n>'] = actions.move_selection_next,
                ['<C-p>'] = actions.move_selection_previous,
                ['<Down>'] = actions.cycle_history_next,
                ['<Up>'] = actions.cycle_history_prev,
                ['<C-a>'] = actions.select_default,
                ['<C-s>'] = actions.select_horizontal,
                ['<C-j>'] = actions.cycle_previewers_next,
                ['<C-k>'] = actions.cycle_previewers_prev,
                ['<C-x>'] = false,
            },
        },
    },
})
