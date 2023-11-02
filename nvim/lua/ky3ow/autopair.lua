local autopairs = require('nvim-autopairs')
local R = require('nvim-autopairs.rule')
local T = require('nvim-autopairs.ts-conds')
local _is = T.is_ts_node
local _isnt = T.is_not_ts_node

local function toggle()
    if autopairs.state.disabled then
        autopairs.enable()
    else
        autopairs.disable()
    end
end

vim.keymap.set('i', '<A-a>', toggle)
