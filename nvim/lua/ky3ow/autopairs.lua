local autopairs = require("nvim-autopairs")
local Rule = require('nvim-autopairs.rule')
local t = require('nvim-autopairs.ts-conds')

autopairs.setup {
    enable_check_bracket_line = false,
}

autopairs.add_rules({
    Rule('(', ')')
    :with_pair(t.is_not_ts_node({ 'string' })),
    Rule('$', '$')
    :with_pair(t.is_not_ts_node({ 'string' }))
})
