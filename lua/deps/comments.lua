--[[ comments.lua ]]

return {
    {
        "numtostr/Comment.nvim",
        requires = { "JoosepAlviste/nvim-ts-context-commentstring" },
        function()
            require("Comment").setup {
                pre_hook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook(),
            }
        end,
    },
}









