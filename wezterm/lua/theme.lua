local wezterm = require('wezterm')

return {
    configure = function(M)
        -- M.color_scheme = 'Solarized Dark (Gogh)'
        -- M.color_scheme = 'Everforest Dark (Gogh)'
        M.window_background_opacity = 1.0
        M.window_decorations = "RESIZE"

        M.inactive_pane_hsb = {
            brightness = 0.6,
        }

        M.colors = require('lua/everforest').colors()
        M.window_frame = require('lua/everforest').window_frame()
    end
}
