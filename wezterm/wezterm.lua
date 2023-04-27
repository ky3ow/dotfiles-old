local config = { keys = {} }
local wezterm = require('wezterm')
local act = wezterm.action
-- Theme --
require('theme').configure(config)

-- Keys --
config.keys = {
    {
        key = "j",
        mods = "CTRL|SHIFT",
        action = act.ActivatePaneDirection "Down",
    },
    {
        key = "k",
        mods = "CTRL|SHIFT",
        action = act.ActivatePaneDirection "Up",
    },
    {
        key = "h",
        mods = "CTRL|SHIFT",
        action = act.ActivatePaneDirection "Left",
    },
    {
        key = "l",
        mods = "CTRL|SHIFT",
        action = act.ActivatePaneDirection "Right",
    },
    {
        key = "s",
        mods = "CTRL|SHIFT",
        action = act.PaneSelect { alphabet = "123456789" },
    }
}

-- WSL only --
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    require('windows').configure_wsl(config)
end

-- ShitBook --
if wezterm.target_triple == "x86_64-apple-darwin" then
    require('mac').configure_mac(config)
end

-- Enable cool image rendering protocol --
config.enable_kitty_graphics = true
return config
