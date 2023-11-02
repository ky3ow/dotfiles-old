# Env config
def create_left_prompt [] {
    let starship = (do -i { ^starship prompt --cmd-duration $env.CMD_DURATION_MS $'--status=($env.LAST_EXIT_CODE)' })
    if ($starship | is-empty) {
        let home = if $nu.os-info.name == "windows" {
            $env.USERPROFILE
        } else {
            $env.HOME
        }

        let dir = ([
            ($env.PWD | str substring 0..($home | str length) | str replace -s $home "~"),
            ($env.PWD | str substring ($home | str length)..)
        ] | str join)

        $dir
    } else {
        $starship
    }
}

# Preferred default editor 
let editor = "hx"
let android = ($env.HOME + /Android/Sdk)

load-env {
    # Specifies how environment variables are:
    # - converted from a string to a value on Nushell startup (from_string)
    # - converted from a value back to a string when running external commands (to_string)
    # Note: The conversions happen *after* config.nu is loaded
    ENV_CONVERSIONS : {
        "PATH": {
            from_string: { |s| $s | split row (char esep) | path expand -n }
            to_string: { |v| $v | path expand -n | str join (char esep) }
        }
        "Path": {
            from_string: { |s| $s | split row (char esep) | path expand -n }
            to_string: { |v| $v | path expand -n | str join (char esep) }
        }
    }
    # React native stuff
    ANDROID_HOME: $android    
    # Default editor
    EDITOR: $editor
    VISUAL: $editor
    # Colors for LS command
    # LS_COLORS: (vivid generate rose_pine | str trim)
    # Prompt
    PROMPT_INDICATOR: "> " 
    PROMPT_INDICATOR_VI_INSERT: ": " 
    PROMPT_INDICATOR_VI_NORMAL: "> "  
    PROMPT_MULTILINE_INDICATOR: "::: "  
    PROMPT_COMMAND: {|| create_left_prompt }
    PROMPT_COMMAND_RIGHT: {|| "" }
    # Directories for plugins and for `source` and `use` scripts
    NU_LIB_DIRS: [
        ($nu.config-path | path dirname | path join 'lib')
    ] 
    NU_PLUGIN_DIRS: [
        ($nu.config-path | path dirname | path join 'plugins')
    ]
    # Path
    PATH: (
        $env.PATH 
        | split row (char esep)
        | append ($android + /emulator) 
        | append ($android + /platform-tools)
        | append ($env.HOME + /.cargo/bin)
    )
}
