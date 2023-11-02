local wezterm = require('wezterm')

return {
    configure = function(M)
        M.color_scheme_dirs = { wezterm.config_dir .. '/custom_themes' }
        M.color_scheme = 'Solarized Dark (Gogh)'
        M.window_background_opacity = 1.0
        M.window_decorations = "RESIZE"

        M.inactive_pane_hsb = {
            brightness = 0.6,
        }

        M.colors = require('lua/solarized').colors()
        M.window_frame = require('lua/solarized').window_frame()
    end
}
