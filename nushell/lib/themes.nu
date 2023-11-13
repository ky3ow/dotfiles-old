# https://github.com/nushell/nu_scripts/tree/main/themes/nu-themes
export def everforest [] { return {
    separator: "#d3c6aa"
    leading_trailing_space_bg: { attr: "n" }
    header: { fg: "#a7c080" attr: "b" }
    empty: "#7fbbb3"
    bool: {|| if $in { "#83c092" } else { "light_gray" } }
    int: "#d3c6aa"
    filesize: {|e|
        if $e == 0b {
            "#d3c6aa"
        } else if $e < 1mb {
            "#83c092"
        } else {{ fg: "#7fbbb3" }}
    }
    duration: "#d3c6aa"
    date: {|| (date now) - $in |
        if $in < 1hr {
            { fg: "#e67e80" attr: "b" }
        } else if $in < 6hr {
            "#e67e80"
        } else if $in < 1day {
            "#dbbc7f"
        } else if $in < 3day {
            "#a7c080"
        } else if $in < 1wk {
            { fg: "#a7c080" attr: "b" }
        } else if $in < 6wk {
            "#83c092"
        } else if $in < 52wk {
            "#7fbbb3"
        } else { "#475258" }
    }
    range: "#d3c6aa"
    float: "#d3c6aa"
    string: "#d3c6aa"
    nothing: "#d3c6aa"
    binary: "#d3c6aa"
    cellpath: "#d3c6aa"
    row_index: { fg: "#a7c080" attr: "b" }
    record: "#d3c6aa"
    list: "#d3c6aa"
    block: "#d3c6aa"
    hints: "#475258"
    search_result: { fg: "#e67e80" bg: "#d3c6aa" }

    shape_and: { fg: "#d699b6" attr: "b" }
    shape_binary: { fg: "#d699b6" attr: "b" }
    shape_block: { fg: "#7fbbb3" attr: "b" }
    shape_bool: "#83c092"
    shape_custom: "#a7c080"
    shape_datetime: { fg: "#83c092" attr: "b" }
    shape_directory: "#83c092"
    shape_external: "#83c092"
    shape_externalarg: { fg: "#a7c080" attr: "b" }
    shape_filepath: "#83c092"
    shape_flag: { fg: "#7fbbb3" attr: "b" }
    shape_float: { fg: "#d699b6" attr: "b" }
    shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: "b" }
    shape_globpattern: { fg: "#83c092" attr: "b" }
    shape_int: { fg: "#d699b6" attr: "b" }
    shape_internalcall: { fg: "#83c092" attr: "b" }
    shape_list: { fg: "#83c092" attr: "b" }
    shape_literal: "#7fbbb3"
    shape_match_pattern: "#a7c080"
    shape_matching_brackets: { attr: "u" }
    shape_nothing: "#83c092"
    shape_operator: "#dbbc7f"
    shape_or: { fg: "#d699b6" attr: "b" }
    shape_pipe: { fg: "#d699b6" attr: "b" }
    shape_range: { fg: "#dbbc7f" attr: "b" }
    shape_record: { fg: "#83c092" attr: "b" }
    shape_redirection: { fg: "#d699b6" attr: "b" }
    shape_signature: { fg: "#a7c080" attr: "b" }
    shape_string: "#a7c080"
    shape_string_interpolation: { fg: "#83c092" attr: "b" }
    shape_table: { fg: "#7fbbb3" attr: "b" }
    shape_variable: "#d699b6"

    background: "#2f383e"
    foreground: "#d3c6aa"
    cursor: "#d3c6aa"
}}

export def rose_pine [] { return {
    separator: "#e0def4"
    leading_trailing_space_bg: { attr: "n" }
    header: { fg: "#ebbcba" attr: "b" }
    empty: "#9ccfd8"
    bool: {|| if $in { "#31748f" } else { "light_gray" } }
    int: "#e0def4"
    filesize: {|e|
        if $e == 0b {
            "#e0def4"
        } else if $e < 1mb {
            "#31748f"
        } else {{ fg: "#9ccfd8" }}
    }
    duration: "#e0def4"
    date: {|| (date now) - $in |
        if $in < 1hr {
            { fg: "#e2e1e7" attr: "b" }
        } else if $in < 6hr {
            "#e2e1e7"
        } else if $in < 1day {
            "#f6c177"
        } else if $in < 3day {
            "#ebbcba"
        } else if $in < 1wk {
            { fg: "#ebbcba" attr: "b" }
        } else if $in < 6wk {
            "#31748f"
        } else if $in < 52wk {
            "#9ccfd8"
        } else { "#475258" }
    }
    range: "#e0def4"
    float: "#e0def4"
    string: "#e0def4"
    nothing: "#e0def4"
    binary: "#e0def4"
    cellpath: "#e0def4"
    row_index: { fg: "#ebbcba" attr: "b" }
    record: "#e0def4"
    list: "#e0def4"
    block: "#e0def4"
    hints: "#475258"
    search_result: { fg: "#e2e1e7" bg: "#e0def4" }

    shape_and: { fg: "#c4a7e7" attr: "b" }
    shape_binary: { fg: "#c4a7e7" attr: "b" }
    shape_block: { fg: "#9ccfd8" attr: "b" }
    shape_bool: "#31748f"
    shape_custom: "#ebbcba"
    shape_datetime: { fg: "#31748f" attr: "b" }
    shape_directory: "#31748f"
    shape_external: "#31748f"
    shape_externalarg: { fg: "#ebbcba" attr: "b" }
    shape_filepath: "#31748f"
    shape_flag: { fg: "#9ccfd8" attr: "b" }
    shape_float: { fg: "#c4a7e7" attr: "b" }
    shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: "b" }
    shape_globpattern: { fg: "#31748f" attr: "b" }
    shape_int: { fg: "#c4a7e7" attr: "b" }
    shape_internalcall: { fg: "#31748f" attr: "b" }
    shape_list: { fg: "#31748f" attr: "b" }
    shape_literal: "#9ccfd8"
    shape_match_pattern: "#ebbcba"
    shape_matching_brackets: { attr: "u" }
    shape_nothing: "#31748f"
    shape_operator: "#f6c177"
    shape_or: { fg: "#c4a7e7" attr: "b" }
    shape_pipe: { fg: "#c4a7e7" attr: "b" }
    shape_range: { fg: "#f6c177" attr: "b" }
    shape_record: { fg: "#31748f" attr: "b" }
    shape_redirection: { fg: "#c4a7e7" attr: "b" }
    shape_signature: { fg: "#ebbcba" attr: "b" }
    shape_string: "#ebbcba"
    shape_string_interpolation: { fg: "#31748f" attr: "b" }
    shape_table: { fg: "#9ccfd8" attr: "b" }
    shape_variable: "#c4a7e7"

    background: "#191724"
    foreground: "#e0def4"
    cursor: "#e0def4"
}}

export def solarized_dark [] { return {
    separator: "#93a1a1"
    leading_trailing_space_bg: { attr: "n" }
    header: { fg: "#859900" attr: "b" }
    empty: "#268bd2"
    bool: {|| if $in { "#2aa198" } else { "light_gray" } }
    int: "#93a1a1"
    filesize: {|e|
        if $e == 0b {
            "#93a1a1"
        } else if $e < 1mb {
            "#2aa198"
        } else {{ fg: "#268bd2" }}
    }
    duration: "#93a1a1"
    date: {|| (date now) - $in |
        if $in < 1hr {
            { fg: "#dc322f" attr: "b" }
        } else if $in < 6hr {
            "#dc322f"
        } else if $in < 1day {
            "#b58900"
        } else if $in < 3day {
            "#859900"
        } else if $in < 1wk {
            { fg: "#859900" attr: "b" }
        } else if $in < 6wk {
            "#2aa198"
        } else if $in < 52wk {
            "#268bd2"
        } else { "#475258" }
    }
    range: "#93a1a1"
    float: "#93a1a1"
    string: "#93a1a1"
    nothing: "#93a1a1"
    binary: "#93a1a1"
    cellpath: "#93a1a1"
    row_index: { fg: "#859900" attr: "b" }
    record: "#93a1a1"
    list: "#93a1a1"
    block: "#93a1a1"
    hints: "#4F585E"
    search_result: { fg: "#dc322f" bg: "#93a1a1" }

    shape_and: { fg: "#6c71c4" attr: "b" }
    shape_binary: { fg: "#6c71c4" attr: "b" }
    shape_block: { fg: "#268bd2" attr: "b" }
    shape_bool: "#2aa198"
    shape_custom: "#859900"
    shape_datetime: { fg: "#2aa198" attr: "b" }
    shape_directory: "#2aa198"
    shape_external: "#2aa198"
    shape_externalarg: { fg: "#859900" attr: "b" }
    shape_filepath: "#2aa198"
    shape_flag: { fg: "#268bd2" attr: "b" }
    shape_float: { fg: "#6c71c4" attr: "b" }
    shape_garbage: { fg: "#FFFFFF" bg: "#FF0000" attr: "b" }
    shape_globpattern: { fg: "#2aa198" attr: "b" }
    shape_int: { fg: "#6c71c4" attr: "b" }
    shape_internalcall: { fg: "#2aa198" attr: "b" }
    shape_list: { fg: "#2aa198" attr: "b" }
    shape_literal: "#268bd2"
    shape_match_pattern: "#859900"
    shape_matching_brackets: { attr: "u" }
    shape_nothing: "#2aa198"
    shape_operator: "#b58900"
    shape_or: { fg: "#6c71c4" attr: "b" }
    shape_pipe: { fg: "#6c71c4" attr: "b" }
    shape_range: { fg: "#b58900" attr: "b" }
    shape_record: { fg: "#2aa198" attr: "b" }
    shape_redirection: { fg: "#6c71c4" attr: "b" }
    shape_signature: { fg: "#859900" attr: "b" }
    shape_string: "#859900"
    shape_string_interpolation: { fg: "#2aa198" attr: "b" }
    shape_table: { fg: "#268bd2" attr: "b" }
    shape_variable: "#6c71c4"

    background: "#002b36"
    foreground: "#93a1a1"
    cursor: "#93a1a1"
}}

