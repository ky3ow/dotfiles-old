local autopairs = require('nvim-autopairs')

local function toggle()
    if autopairs.state.disabled then
        autopairs.enable()
    else
        autopairs.disable()
    end
end

vim.keymap.set('i', '<A-a>', toggle)
