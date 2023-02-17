--[[ statusline.lua ]]

return {
  -- statusline override
  {
    "nvim-lualine/lualine.nvim",
--    requires = { "rmagatti/auto-session" }, -- TODO oaw_20230210 have not pulled in this feature yet
    function()
      require("lualine").setup {
        options = {
          icons_enabled = true,
          section_separators = "",
          component_separators = "",
          globalstatus = true,
          refresh = {
            statusline = 200,
          },
        },

        sections = {
          lualine_a = { "mode" },
          lualine_b = { "branch", "diff", "diagnostics" },
          lualine_c = {
            { "filename", path = 1 },
            "filesize",
          },
--          lualine_x = { -- TODO oaw_20230210 this uses that feature I haven't pulled in yet!
--            require("auto-session-library").current_session_name,
--            "encoding",
--            { "filetype", colored = true },
--          },

          lualine_x = { "filetype", "fileformat" },
          lualine_y = { "location", "progress" },
          lualine_z = { "hostname" },
        },

        inactive_sections = {},
        extensions = {},
      }
    end,
  },
}







