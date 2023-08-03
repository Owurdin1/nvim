require('telescope').setup {
    defaults = require('telescope.themes').get_ivy {
        file_ignore_patterns = (function()
            local ignore_dirs = {}

            for _, name in ipairs {
                'node_modules',
                'target',
                'in',
                'out',
                'build',
                } do
                table.insert(ignore_dirs, string.format('^%s/', name))
                table.insert(ignore_dirs, string.format('/%s/', name))
            end

            return ignore_dirs
        end)(),
    },

    pickers = {
        buffers = {
            sort_last_used = true,
            mappings = {
                n = {
                    ['<backspace>'] = require('telescope.actions').delete_buffer,
                },
            },
        },

        live_grep = {
            glob_pattern = {
                "!tmpl*.h", 
                "!tmpl*.c",
                "!*.ipynb",
                "!*.vcxproj.*",
                "!*.vcxproj",
            }
        },
    },
}
