local M = {}
local wezterm = require('wezterm')
local terafox_colors = {
    base = "#0B1314",
    green = "#7AA4A1",
    dark_green = "#152528",
    pink = "#D38D97",
    dark_pink = "#AD5C7C",
    orange = "#FDA47F",
    red = "#E85C51",
    white = "CBD9D8",
    blue = "#73A3B7",
    light_blue = "#AFD4DE",
}

if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    M.default_prog = { 'wsl' }
end

M.color_scheme_dirs = { wezterm.config_dir .. '/custom_themes' }
M.color_scheme = "terafox"
M.background = {
    {
        source = {
            File = {
                path = wezterm.config_dir .. '/wallpapers/better_foresty_anim.png',
                speed = 0.5
            }
        },
        width = '100%',
        repeat_x = 'NoRepeat',
        hsb = {
            brightness = 0.05,
        },
    },
}
M.window_frame = {
    inactive_titlebar_bg = terafox_colors.dark_green,
    active_titlebar_bg = terafox_colors.base,
}
M.window_decorations = "RESIZE"
M.colors = {
    tab_bar = {

        inactive_tab_edge = terafox_colors.green,

        active_tab = {
            bg_color = terafox_colors.dark_green,
            fg_color = terafox_colors.pink,
        },

        inactive_tab = {
            bg_color = terafox_colors.dark_green,
            fg_color = terafox_colors.white,
        },

        inactive_tab_hover = {
            bg_color = terafox_colors.base,
            fg_color = terafox_colors.dark_pink,
        },

        new_tab = {
            bg_color = terafox_colors.dark_green,
            fg_color = terafox_colors.white,
        },

        new_tab_hover = {
            bg_color = terafox_colors.base,
            fg_color = terafox_colors.dark_pink,
        }

    },
}
M.inactive_pane_hsb = {
    brightness = 0.4,
}

M.enable_kitty_graphics=true
M.send_composed_key_when_alt_is_pressed = false
M.use_ime = false

return M
