--[[ version_control.lua ]]

return {
  -- git integration
  {
  "tpope/vim-fugitive",
  },

  {
      "junegunn/gv.vim",
      requires = "tpope/vim-fugitive",
  },


  -- TODO OAW_20230210 This looks really interesting but let's make things work before doing new fun stuff!
  -- show git unstaged code
--  {
--    "lewis6991/gitsigns.nvim",
--    requires = "nvim-lua/plenary.nvim",
--    function()
--      require("gitsigns").setup()
--    end,
--  },



}









