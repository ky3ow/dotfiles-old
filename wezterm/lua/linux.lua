return {
  configure_linux = function(M)
    M.font = require("wezterm").font_with_fallback({
      "Hack Nerd Font",
      "Symbols Nerd Font Mono"
    })
    M.adjust_window_size_when_changing_font_size = false
    M.hide_tab_bar_if_only_one_tab = true
    M.tab_bar_at_bottom = true
    M.background = {}
    M.window_background_opacity = 0.8
  end
}
