--[[ init.lua ]]
--
--LEADER
-- These keybindings need to be defined before the first 
vim.g.mapleader = ","
vim.g.localleader = "\\"

-- TODO Setup work and windows environment global flags to make home/work environments easier to deal with
-- Attempts to update the system path through neovim locally. Ended up doing
-- this through the cmder console setup
-- local str path_update_var = "C:/Python37/;" .. $PATH

-- path_update_var = "C:/Python37/,"
-- path_update_var = path_update_var .. $PATH
-- $PATH = path_update_var

-- IMPORTS
require('vars') 			-- Variables
require('opts')				-- Options
require('keys')				-- Keymaps
require('plugin_config.plugin_config')
require('bootstrap')                    -- Start dep bootstrap
-- require('comments.plugin.comments')

-- require('dep') {
--     -- list of package specs...
--     modules = {
--         prefix = 'deps.',
--         "comments",
--         "debugging",
--         "lsp",
--         "nvim_tree",
--         "statusline",
--         "search",
--         "startify",
--         "treesitter",
--         "version_control",
--         "vimwiki",
--     },
-- }

