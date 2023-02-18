local status_ok, indent = pcall(require, "indent_blankline")
if not status_ok then
    print("indent problem")
    return
end

indent.setup {
    show_current_context = true,
    space_char_blankline = " ",
}
