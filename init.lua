--[[ init.lua ]]
--
--LEADER
-- These keybindings need to be defined before the first 
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- IMPORTS
require('vars') 			-- Variables
require('opts')				-- Options
require('keys')				-- Keymaps
require('bootstrap')                    -- Start dep bootstrap
require('dep') {
    -- list of package specs...
    modules = {
        prefix = 'deps.',
        "comments",
        "lsp",
        "nvim_tree",
        "statusline",
        "search",
        "startify",
        "treesitter",
        "version_control",
        "vimwiki",
    },
}

