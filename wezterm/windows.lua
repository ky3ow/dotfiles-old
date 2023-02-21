local wezterm = require('wezterm')

return {
    configure_wsl = function(M)
        local keys = M.keys
        M.default_prog = { 'wsl' }
        --    M.default_domain = "WSL:Ubuntu"
        --    M.wsl_domains = {
        --        {
        --            name = 'WSL:Ubuntu',
        --            distribution = 'Ubuntu',
        --            default_cwd = '~',
        --        },
        --    }
        -- Hack(should remove when install new windows) --

        wezterm.on("SpawnNewWindowInWorkingDirectory", function(window, pane)
            local current_directory = pane:get_current_working_dir():gsub("file://ky3ow", "") --- Replace this one with your hostname
            local startup_command = "export wezterm_startup_directory=" .. current_directory .. "&& fish"

            window:perform_action(wezterm.action { SpawnCommandInNewWindow = {
                args = { "bash", "-c", startup_command }
            } }, pane)
        end)

        wezterm.on("SpawnNewTabInWorkingDirectory", function(window, pane)
            local current_directory = pane:get_current_working_dir():gsub("file://ky3ow", "") --- Replace this one with your hostname
            local startup_command = "export wezterm_startup_directory=" .. current_directory .. "&& fish"

            window:perform_action(wezterm.action { SpawnCommandInNewTab = {
                args = { "bash", "-c", startup_command }
            } }, pane)
        end)

        table.insert(keys,
            { key = "n", mods = "ALT", action = wezterm.action { EmitEvent = "SpawnNewWindowInWorkingDirectory" } })
        table.insert(keys,
            { key = "t", mods = "ALT", action = wezterm.action { EmitEvent = "SpawnNewTabInWorkingDirectory" } })
    end
}
