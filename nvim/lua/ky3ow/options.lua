local options = {
    backup = false,
    cmdheight = 2,
    conceallevel = 0,
    completeopt = { "menuone", "noselect" },
    fileencoding = "utf-8",
    gdefault = true,
    hlsearch = false,
    ignorecase = true,
    mouse = "a",
    pumheight = 10,
    showmode = true,
    showtabline = 2,
    smartcase = true,
    smartindent = true,
    splitbelow = true,
    splitright = true,
    swapfile = false,
    termguicolors = true,
    timeoutlen = 1000,
    undofile = true,
    updatetime = 300,
    writebackup = false,
    wrap = false,
    expandtab = true,
    shiftwidth = 4,
    tabstop = 4,
    cursorline = true,
    number = true,
    relativenumber = true,
    numberwidth = 4,
    signcolumn = "yes",
    scrolloff = 8,
    sidescrolloff = 8,
    list = true
}
for k, v in pairs(options) do
    vim.opt[k] = v
end

vim.opt.shortmess:append "c"
vim.cmd "set whichwrap+=<,>,h,l,[,]"
