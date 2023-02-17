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
            end,

            function()
                require("mason-lspconfig").setup {
                ensure_installed = { "sumneko_lua", "clangd" },
                }
            end,

            function()
                require("lspconfig").sumneko_lua.setup()
            end,

    },
}









