local wezterm = require 'wezterm'
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

return {
    color_scheme_dirs = { wezterm.config_dir .. '/custom_themes' },
    color_scheme = "terafox",
    background = {
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
    },
    window_frame = {
        inactive_titlebar_bg = terafox_colors.dark_green,
        active_titlebar_bg = terafox_colors.base,
    },
    window_decorations = "RESIZE",
    colors = {

        tab_bar = {

            inactive_tab_edge = terafox_colors.green,

            active_tab = {
                bg_color = terafox_colors.dark_green,
                fg_color = terafox_colors.dark_pink,
            },

            inactive_tab = {
                bg_color = terafox_colors.dark_green,
                fg_color = terafox_colors.white,
            },

            inactive_tab_hover = {
                bg_color = terafox_colors.base,
                fg_color = terafox_colors.red,
            },

            new_tab = {
                bg_color = terafox_colors.dark_green,
                fg_color = terafox_colors.white,
            },

            new_tab_hover = {
                bg_color = terafox_colors.base,
                fg_color = terafox_colors.red,
            }

        },

    },
    inactive_pane_hsb = {
        brightness = 0.4,
    },
}
