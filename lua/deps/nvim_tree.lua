--[[ nvim_tree.lua ]]

return {
    {
    "nvim-tree/nvim-tree.lua",
    requires = "kyazdani42/nvim-web-devicons",
    function()
        require("nvim-tree").setup {
            sort_by = "case_sensitive",
            view = {
                width = 30,
                mappings = {
                    list = {
                        { key = "u", action = "dir_up" },
                    },
                },
            },
            update_focused_file = {
                enable = true,
                update_cwd = true,
            },
        }
    end,
    },
}

