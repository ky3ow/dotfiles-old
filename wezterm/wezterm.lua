local config = { keys = {} }
local wezterm = require('wezterm')
local act = wezterm.action
-- Theme --
require('lua/theme').configure(config)

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

config.unix_domains = {}

-- WSL only --
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    table.insert(config.unix_domains, { name = 'wsl', serve_command = { 'wsl', 'wezterm-mux-server', '--daemonize' } })
end

-- ShitBook --
if wezterm.target_triple == "x86_64-apple-darwin" then
    require('lua/mac').configure_mac(config)
end

-- Linux --
if wezterm.target_triple == "x86_64-unknown-linux-gnu" then
    require('lua/linux').configure_linux(config)
end

-- Enable cool image rendering protocol --
config.enable_kitty_graphics = true
--table.insert(config.unix_domains, { name = 'unix' })

return config
