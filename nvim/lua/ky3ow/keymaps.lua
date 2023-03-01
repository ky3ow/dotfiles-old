local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

vim.keymap.set("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- normal = n
-- insert = i
-- visual = v
-- Modes
-- visual block = x
-- terminal = t
-- command = c

-- Window nav --
vim.keymap.set("n", "<A-h>", "<C-w>h", opts)
vim.keymap.set("n", "<A-j>", "<C-w>j", opts)
vim.keymap.set("n", "<A-k>", "<C-w>k", opts)
vim.keymap.set("n", "<A-l>", "<C-w>l", opts)
vim.keymap.set("n", "<A-c>", "<C-w>c", opts)
vim.keymap.set("n", "<A-v>", "<C-w>v", opts)
vim.keymap.set("n", "<A-s>", "<C-w>s", opts)

-- Resize with arrows --
vim.keymap.set("n", "<A-Up>", ":resize +2<CR>", opts)
vim.keymap.set("n", "<A-Down>", ":resize -2<CR>", opts)
vim.keymap.set("n", "<A-Left>", ":vertical resize +2<CR>", opts)
vim.keymap.set("n", "<A-Right>", ":vertical resize -2<CR>", opts)

-- Better line start/end --
vim.keymap.set("", "H", "^", { silent = true })
vim.keymap.set("", "L", "$", { silent = true })

-- Explore tree --
vim.keymap.set("n", "<leader>e", ":Lex 30<CR>", opts)

-- Center when jumping --
vim.keymap.set("n", "<C-d>", "<C-d>zz", opts)
vim.keymap.set("n", "<C-u>", "<C-u>zz", opts)
vim.keymap.set("n", "n", "nzzzv", opts)
vim.keymap.set("n", "N", "Nzzzv", opts)

-- Navigate buffers --
vim.keymap.set("n", "]b", ":bnext<CR>", opts)
vim.keymap.set("n", "[b", ":bprevious<CR>", opts)

-- Haha hehe~ --
vim.keymap.set("i", "<C-c>", "<Esc>", opts)

-- Stay in indent mode --
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)

-- Move text --
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", opts)
vim.keymap.set("x", "J", ":m '>+1<CR>gv=gv", opts)
vim.keymap.set("x", "K", ":m '<-2<CR>gv=gv", opts)

-- System register --
vim.keymap.set("n", "<leader>y", '"+y', opts)
vim.keymap.set("v", "<leader>y", '"+y', opts)
vim.keymap.set("x", "<leader>y", '"+y', opts)
vim.keymap.set("n", "<leader>Y", '"+Y', opts)

-- Paste over --
vim.keymap.set("v", "<leader>p", '"_dP', opts)
vim.keymap.set("x", "<leader>p", '"_dP', opts)

-- Delete to void --
vim.keymap.set("v", "<leader>d", '"_d', opts)
vim.keymap.set("x", "<leader>d", '"_d', opts)

-- Substitute --
vim.keymap.set("n", "<leader>*", ":%s/<C-r><C-w>/", opts)
vim.keymap.set("n", "<leader>_", ":%s/\\<<C-r><C-w>\\>/", opts)
