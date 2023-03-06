require('eyeliner').setup {
    highlight_on_key = true,
    dim = true
}

vim.api.nvim_set_hl(0, 'EyelinerPrimary', { bold = true, fg = "#FB4483" })
vim.api.nvim_set_hl(0, 'EyelinerSecondary', { bold = true, fg = "#FFD36E" })
