require('lualine').setup {
    options = {
        icons_enabled = true,
        -- theme = 'gruvbox',
        theme = 'onelight',
        -- theme = 'neon',
        -- theme = 'dracula',
        -- theme = 'onelight',
    },
    sections = {
        lualine_a = {
            {
            'filename',
            path = 1,
            }
        }
    }
}
