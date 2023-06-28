local wezterm = require('wezterm')

return {
    configure = function(M)
        M.color_scheme_dirs = { wezterm.config_dir .. '/custom_themes' }
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
            brightness = 0.6,
        }

        M.colors = require('lua/rose-pine').colors()
        M.window_frame = require('lua/rose-pine').window_frame()
    end
}
