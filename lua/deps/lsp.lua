--[[ lsp.lua ]]

return {
    {
        "williamboman/mason.nvim",
            deps = {
                 requires = "williamboman/mason-lspconfig.nvim",
                 "neovim/nvim-lspconfig",
            },
            function()
                require("mason").setup()
                require("mason-lspconfig").setup()
                -- require("nvim-lspconfig").setup()

                require("mason-lspconfig").setup_handlers {
                    function(clangd)
                        -- require("lspconfig").clangd.setup {}
                    end,

                    -- ["clangd"] = function()
                    --     require("").setup {}
                    -- end
                }
            end,

            -- function()
            --     require("mason-lspconfig").setup {
            --     ensure_installed = { "lua_ls", "clangd" },
            --     automatic_installation = true,
            --     }
            --
            --     require("mason-lspconfig").setup_handlers {
            --         function()
            --             require("lspconfig").clangd.setup {}
            --         end,
            --     }
            -- end,
            --
            -- function()
            --     require("lspconfig").clangd.setup()
            --     require("lspconfig").sumneko_lua.setup()
            -- end,

    },
    {
        "neovim/nvim-lspconfig"
    },
    {
    "williamboman/mason-lspconfig.nvim",
    deps = {
        requires = "williamboman/mason.nvim",
                   "neovim/nvim-lspconfig",
    },

    function()
        -- require("nvim-lspconfig").cland.setup {}


        -- require("mason-lspconfig").setup()
        -- require("mason-lspconfig").setup {
        -- ensure_installed = { "lua_ls", "clangd" },
        -- }
    end,

    },

}









