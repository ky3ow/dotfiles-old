local status_ok, indent = pcall(require, "indent_blankline")
if not status_ok then
    print("indent problem")
    return
end

local terafox_colors = {
    orange = "#FDA47F",
    red = "#E85C51",
    blue = "#73A3B7",
    light_blue = "#AFD4DE",
    green = "#7AA4A1",
    pink = "#D38D97",
    dark_pink = "#AD5C7C",
}

for color, hex in pairs(terafox_colors) do
    vim.cmd("highlight " .. color .. " guifg=" .. hex .. " gui=nocombine")
end

local colorname_list = {}
for color, _ in pairs(terafox_colors) do
    table.insert(colorname_list, color)
end

indent.setup {
    show_current_context = true,
    char_highlight_list = colorname_list,
}
