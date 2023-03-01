local M = {}

local kind_icons = {
    Text = "",
    Method = "m",
    Function = "",
    Constructor = "",
    Field = "",
    Variable = "",
    Class = "",
    Interface = "",
    Module = "",
    Property = "",
    Unit = "",
    Value = "",
    Enum = "",
    Keyword = "",
    Snippet = "",
    Color = "",
    File = "",
    Reference = "",
    Folder = "",
    EnumMember = "",
    Constant = "",
    Struct = "",
    Event = "",
    Operator = "",
    TypeParameter = "",
}
local snip_status_ok, luasnip = pcall(require, "luasnip")
if not snip_status_ok then
    return
end

local cmp = require('cmp')

M.setup = function(lsp)
    local cmp_select = { behavior = cmp.SelectBehavior.Select }
    local cmp_mappings = lsp.defaults.cmp_mappings({
        ["<CR>"]      = cmp.config.disable,
        ["<C-p>"]     = cmp.mapping.select_prev_item(cmp_select),
        ["<C-n>"]     = cmp.mapping.select_next_item(cmp_select),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-d>"]     = cmp.mapping(cmp.mapping.scroll_docs(4), { "i", "c" }),
        ["<C-u>"]     = cmp.mapping(cmp.mapping.scroll_docs( -4), { "i", "c" }),
        ["<C-a>"]     = cmp.mapping.confirm { select = true },
        ['<Tab>']     = cmp.mapping(function(fallback)
            if luasnip.jumpable(1) then
                luasnip.jump(1)
            else
                fallback()
            end
        end, { 'i', 's' }),
        ['<S-Tab>']   = cmp.mapping(function(fallback)
            if luasnip.jumpable( -1) then
                luasnip.jump( -1)
            else
                fallback()
            end
        end, { 'i', 's' }),
    })
    lsp.setup_nvim_cmp({
        mapping = cmp_mappings,
        sources = {
            { name = "nvim_lsp" },
            { name = "nvim_lua" },
            { name = "luasnip" },
            { name = "buffer" },
            { name = "path" },
        },
        formatting = {
            fields = { "kind", "abbr", "menu" },
            format = function(entry, vim_item)
                vim_item.kind = string.format("%s", kind_icons[vim_item.kind])
                vim_item.menu = ({
                        nvim_lsp = "[LSP]",
                        nvim_lua = "[NVIM CONF]",
                        luasnip = "[Snippet]",
                        buffer = "[Buffer]",
                        path = "[Path]",
                    })[entry.source.name]
                return vim_item
            end,
        },
    })
end

-- To make autopair brackets --
local cmp_autopairs = require('nvim-autopairs.completion.cmp')
cmp.event:on(
  'confirm_done',
  cmp_autopairs.on_confirm_done()
)

return M
