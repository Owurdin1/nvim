require('aerial').setup {
    layout = {
        max_width = { 60, 0.2 },
        width = nil,
        min_width = 30,
        },

    close_automatic_events = {
        "unfocus",
        "switch_buffer",
        "unsupported",
        },

    filter_kind = {
        --"Array",
        "Class",
        "Constructor",
        --"Enum",
        "Funtion",
        "Interface",
        "Module",
        "Method",
        --"Property",
        "Struct",
        },

    default_direction = "right",
    highlight_on_hover = true,
    highlight_on_jump = 1000,
    close_on_select = true,
    }
