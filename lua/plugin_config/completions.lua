local cmp = require( "cmp" )
local ls = require("luasnip")
local types = require("luasnip.util.types")

ls.config.set_config{
    -- This tells LuaSnip to remember to keep around the last snippet.
    -- You can jump back into it even if you move outside of the selection
    history = true,

    -- this one is cool casue if you have dynamic snippets it updates as you type!
    updateevents = "TextChanged, TextChangedI",

    -- Autosnippets:
    enable_autosnippets = true,

    -- Crazy highlights!!
    -- ext_opts = nil,
    ext_opts = {
        [types.choiceNode] = {
            active = {
            virt_text = { { "←", "Error" } },
                },
            },
        },
    }

ls.snippets = {
    all = {
        -- Available in any filetype
        ls.parser.parse_snippet("expand", "-- this is what was expanded!"),
        },

    lua = {
        -- Lua specific sippets go here
        },

    c = {
        -- c specific sippets go here
        },
    }

-- luasnip keymapping things
-- ctrl + k to jump forward if something snippet is there, IE go to next thing
vim.keymap.set({'i', 's'}, '<c-i>', function() if ls.expand_or_jumpable() then ls.expand_or_jump() end end, {silent=true})

-- ctrl + j to jump backwards if we want to go back, IE go to previous thing
vim.keymap.set({'i', 's'}, '<c-j>', function() if ls.jumpable(-1) then ls.jump(-1) end end, {silent=true})

-- ctrl + l is selecting within a list of options
-- This is useful for choice nodes
vim.keymap.set('i', '<c-l>', function() if ls.choice_active() then ls.change_choice(1) end end, {silent=true})

require("luasnip.loaders.from_vscode").lazy_load() --{ paths = { "~/AppData/Local/nvim/lua/plugin_config/luasnip/garmin.garmin-c-snipets-1.3.1" } })

cmp.setup({

    snippet = {
        expand = function (args)
            require('luasnip').lsp_expand(args.body)
        end,
        },

    mapping = cmp.mapping.preset.insert({
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true
            }),
        }),

    sources = {
        { name = 'nvim_lsp'},
        { name = 'luasnip' },
        { name = 'buffer' },
        },

    })



