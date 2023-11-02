local M = {}

local palette = {
    base = '#002b36',
    overlay = '#073642',
    muted = '#586e75',
    text = '#93a1a1',
    red = '#dc322f',
    yellow = '#b58900',
    orange = '#cb4b16',
    green = '#859900',
    cyan = '#2aa198',
    violet = '#6c71c4',
    highlight_high = '#eee85d',
}

local active_tab = {
    bg_color = palette.overlay,
    fg_color = palette.cyan,
}

local inactive_tab = {
    bg_color = palette.base,
    fg_color = palette.muted,
}

function M.colors()
    return {
        foreground = palette.text,
        background = palette.base,
        cursor_bg = palette.highlight_high,
        cursor_border = palette.highlight_high,
        cursor_fg = palette.muted,
        selection_bg = palette.overlay,
        selection_fg = palette.text,

        ansi = {
            palette.overlay,
            palette.red,
            palette.green,
            palette.yellow,
            palette.cyan,
            palette.violet,
            palette.orange,
            palette.text,
        },

        brights = {
            palette.muted,
            palette.red,
            palette.green,
            palette.yellow,
            palette.cyan,
            palette.violet,
            palette.orange,
            palette.text,
        },

        tab_bar = {
            background = palette.base,
            active_tab = active_tab,
            inactive_tab = inactive_tab,
            inactive_tab_hover = active_tab,
            new_tab = inactive_tab,
            new_tab_hover = active_tab,
            inactive_tab_edge = palette.muted, -- (Fancy tab bar only)
        },
    }
end

function M.window_frame() -- (Fancy tab bar only)
    return {
        active_titlebar_bg = palette.base,
        inactive_titlebar_bg = palette.base,
    }
end

return M
