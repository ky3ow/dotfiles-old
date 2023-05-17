local status_ok, configs = pcall(require, "nvim-treesitter.configs")
if not status_ok then
    return
end

configs.setup {
    ensure_installed = { "vimdoc", "javascript", "html", "css", "typescript", "lua", "c" },
    sync_install = false,
    auto_install = true,
    ignore_install = { "" },
    highlight = {
        enable = true,
        disable = { "" },
        additional_vim_regex_highlighting = false,
    },
    indent = {
        enable = true,
        disable = { "yaml" },
    },
    incremental_selection = {
        enable = true,
        keymaps = {
            init_selection = '<c-]>',
            node_incremental = '<c-]>',
            node_decremental = '<c-[>',
        },
    },
    rainbow = {
        enable = true,
        extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
        max_file_lines = nil, -- Do not enable for files with more than n lines, int
        colors = {
            "#8897F4",
            "#515196",
            "#BD93F9",
            "#F18FB0",
            "#FF4971",
            "#F1C4E0",
        }
    },
    textobjects = {
        select = {
            enable = true,
            lookahead = true, -- Automatically jump forward to textobj, similar to targets.vim
            keymaps = {
                ['af'] = '@function.outer',
                ['if'] = '@function.inner',
                ['ac'] = '@class.outer',
                ['ic'] = '@class.inner',
            },
        },
    },
    autopairs = {
        enable = true,
    },
    autotag = {
        enable = true,
    }
}
