--[[ search.lua ]]

return {
    {
        -- Modern fzf alternative
        "nvim-telescope/telescope.nvim",
        requires = {
            "nvim-lua/plenary.nvim",
            "nvim-treesitter/nvim-treesitter",
            "kyazdani42/nvim-web-devicons",
        },
        function()
            require("telescope").setup {
                defaults = require("telescope.themes").get_ivy {
                },

                pickers = {
                    buffers = {
                        sort_lastused = true,
                        mappings = {
                            n = {
                                ["<backspace>"] = require("telescope.actions").delete_buffer,
                            },
                        },
                    },
                },
            }
        end,
    },

    {
        -- beacon to show cursor jumps
        "danilamihailov/beacon.nvim"
    },

--    -- quick buffer navigation
--    {
--        "ggandor/lightspeed.nvim",
--        requires = "tpope/vim-repeat",
--        function()
--            require("lightspeed").setup {
--                limit_ft_matches = 50,
--          }
--        end,
--    },

    -- peek lines without jumping
--    {
--        "nacro90/numb.nvim",
--        function()
--            require("numb").setup()
--        end,
--    },
}










