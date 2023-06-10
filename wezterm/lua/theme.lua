local wezterm = require('wezterm')

local themes = {
    --

    terafox_colors = {
        base = "#0B1314",
        inactive_tab_edge = "#7AA4A1",
        main_bg = "#152528",
        active_tab_fg = "#D38D97",
        hover_fg = "#AD5C7C",
        inactive_fg = "CBD9D8",
    },
    --

    shadotheme = {
        base = "#140a1d",
        inactive_tab_edge = "#F18FB0",
        main_bg = "#09090d",
        active_tab_fg = "#E9729D",
        hover_fg = "#B52A5B",
        inactive_fg = "#e3c7fc",
    },
    --

    duskfox_colors = {
        base = "#020109",
        inactive_tab_edge = "#393552",
        main_bg = "#09090d",
        active_tab_fg = "#E9729D",
        hover_fg = "#f6c177",
        inactive_fg = "#9B7FBD",
    },
    --
}


--local theme = themes.duskfox_colors

return {
    configure = function(M)
        M.color_scheme_dirs = { wezterm.config_dir .. '/custom_themes' }
--        M.color_scheme = "rose-pine"
        M.window_background_opacity = 1.0
        M.background = {
            {
                source = {
                    File = {
                        path = wezterm.config_dir .. '/wallpapers/cat_half.png',
                        speed = 1
                    }
                },
                width = '100%',
                repeat_x = 'NoRepeat',
                hsb = {
                    brightness = 0.05,
                },
            }
        }
        M.window_decorations = "RESIZE"

        M.inactive_pane_hsb = {
            brightness = 0.4,
        }

        M.colors = require('lua/rose-pine').colors()
        M.window_frame = require('lua/rose-pine').window_frame()
    end
}
