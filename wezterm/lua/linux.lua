return {
  configure_linux = function(M) 
    local wezterm = require("wezterm")
    M.font = require("wezterm").font_with_fallback({
      "JetBrains Mono",
      "Symbols Nerd Font Mono"
    }) 
    M.adjust_window_size_when_changing_font_size = false
    M.hide_tab_bar_if_only_one_tab = true
    M.background = {}
  end
}
