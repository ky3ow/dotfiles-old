local M = { keys = {} }
local wezterm = require('wezterm')
local configure_theme = require('theme').configure

-- WSL only --
if wezterm.target_triple == "x86_64-pc-windows-msvc" then
    require('windows').configure_wsl(M)
end

if wezterm.target_triple == "x86_64-apple-darwin" then
    require('mac').configure(M)
end

-- Enable cool image rendering protocol --
M.enable_kitty_graphics = true

configure_theme(M)
return M
