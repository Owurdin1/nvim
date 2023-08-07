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

    -- filter_kind = false, -- I know this works but things can get pretty noisy.


    filter_kind = {
        "Array",
        -- "Boolean",
        "Class",
        "Constant",
        "Constructor",
        "Enum",
        -- "EnumMember",
        -- "Event",
        -- "Field", -- actually displays things, but nothing I want in teh Aerial list!
        "Function",
        "Interface",
        "Module",
        "Method",
        "Property",
        "Struct",
        },

    default_direction = "right",
    highlight_on_hover = true,
    highlight_on_jump = 1000,
    close_on_select = true,
    }
