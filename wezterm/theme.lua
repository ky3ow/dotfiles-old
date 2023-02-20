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

local shadotheme_colors = {
    base = "#140a1d",
    green = "#F18FB0",
    dark_green = "#09090d",
    pink = "#E9729D",
    dark_pink = "#B52A5B",
    orange = "#FDA47F",
    red = "#E85C51",
    white = "#e3c7fc",
    blue = "#73A3B7",
    light_blue = "#AFD4DE",
}

return {
    configure = function(M)
        M.color_scheme_dirs = { wezterm.config_dir .. '/custom_themes' }
        M.color_scheme = "shadotheme"
        M.background = {
            {
                source = {
                    File = {
                        path = wezterm.config_dir .. '/wallpapers/kit.png',
                        speed = 1
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
            inactive_titlebar_bg = shadotheme_colors.dark_green,
            active_titlebar_bg = shadotheme_colors.base,
        }
        M.window_decorations = "RESIZE"
        M.colors = {
            tab_bar = {

                inactive_tab_edge = shadotheme_colors.green,

                active_tab = {
                    bg_color = shadotheme_colors.dark_green,
                    fg_color = shadotheme_colors.pink,
                },

                inactive_tab = {
                    bg_color = shadotheme_colors.dark_green,
                    fg_color = shadotheme_colors.white,
                },

                inactive_tab_hover = {
                    bg_color = shadotheme_colors.base,
                    fg_color = shadotheme_colors.dark_pink,
                },

                new_tab = {
                    bg_color = shadotheme_colors.dark_green,
                    fg_color = shadotheme_colors.white,
                },

                new_tab_hover = {
                    bg_color = shadotheme_colors.base,
                    fg_color = shadotheme_colors.dark_pink,
                }

            },
        }

        M.inactive_pane_hsb = {
            brightness = 0.4,
        }
    end
}
