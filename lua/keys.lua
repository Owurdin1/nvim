--[[ keys.lua ]]

--[[ Global settings for vim ]]
--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1

--[[ File Global Values ]]
local map = vim.api.nvim_set_keymap

--remap the key used to leave insert mode
map('i', 'jk', '<Esc>', {})


-- Define the function to print a string to a buffer
-- function Garmin_Comment(text)
--
--     local current_line = vim.fn.line('.')
--     local current_col = vim.fn.col('.')
--     local indent_index = current_col / 4
--
--     local comment_block = {} -- = '\n/*---------------------------------------------------------------------------- \n\n----------------------------------------------------------------------------*/\n\n'
--
--     comment_block[ 0 ] = '\n/*---------------------------------------------------------------------------- \n\n----------------------------------------------------------------------------*/\n\n'
--
--     -- if current_col == indent_index then
--     comment_block[ 1 ] =  '\n    /*------------------------------------------------------------------------ \n\n    ------------------------------------------------------------------------*/\n\n'
--     -- elseif current_col == indent_index + 4 then
--     comment_block[ 2 ]=  '\n        /*-------------------------------------------------------------------- \n\n        --------------------------------------------------------------------*/\n\n'
--     -- elseif current_col == indent_index + 8 then
--     comment_block[ 3 ] =   '\n            /*---------------------------------------------------------------- \n\n            ----------------------------------------------------------------*/\n\n'
--     -- elseif current_col == indent_index + 12 then
--     comment_block[ 4 ] =   '\n                /*------------------------------------------------------------ \n\n                ------------------------------------------------------------*/\n\n'
--     -- elseif current_col == indent_index + 16 then
--     comment_block[ 5 ] =   '\n                    /*-------------------------------------------------------- \n\n                    --------------------------------------------------------*/\n\n'
--     -- elseif current_col == indent_index + 20 then
--     comment_block[ 6 ] =   '\n                        /*---------------------------------------------------- \n\n                        ----------------------------------------------------*/\n\n'
--     -- elseif current_col == indent_index + 24 then
--     comment_block[ 7 ] =   '\n                            /*------------------------------------------------ \n\n                            ------------------------------------------------*/\n\n'
--     -- elseif current_col == indent_index + 28 then
--     comment_block[ 8 ] =   '\n                                /*-------------------------------------------- \n\n                                --------------------------------------------*/\n\n'
--     -- elseif current_col == indent_index + 32 then
--     comment_block[ 9 ] =   '\n                                    /*---------------------------------------- \n\n                                    ----------------------------------------*/\n\n'
--     -- end
--
--     local lines = vim.fn.split(comment_block[ indent_index ], '\n')
--
--     vim.api.nvim_buf_set_text(0, current_line - 1, current_col - 1, current_line - 1, current_col - 1, lines)
--
--     -- vim.api.nvim_buf_set_lines(0, current_line - 1, current_line, true, {text})
--     -- vim.api.nvim_buf_set_lines(0, current_line - 1, current_line, true, lines)
--
--     local num_lines_to_shift = #lines
--
--     -- for i, line in ipairs(lines) do
--     for i = current_line - 1, current_line + num_lines_to_shift - 2, -1 do
--         local line_text = vim.api.nvim_buf_get_lines(0, i, i + 1, false)[ 1 ]
--
--         vim.api.nvim_buf_set_lines(0, i + num_lines_to_shift, i + num_lines_to_shift + 1, false, {line_text})
--     end
--
--     -- Append the text to the buffer
--     -- vim.api.nvim_buf_set_lines(current_buf, -1, -1, true, {text})
-- end

-- Map the function to a key combination
-- vim.api.nvim_set_keymap('n', '<Leader>cq', [[:lua Garmin_Comment("Hello, NeoVim buffer!")<CR>]], { noremap = true, silent = true })


-- map ev to change/edit init.lua in split screen
-- This is the unix path!
map('n', '<leader>ev', ':vsplit ~/AppData/Local/nvim/init.lua<CR>', {})
map('n', '<leader>sv', ':so ~/AppData/Local/nvim/init.lua<CR>', {})
map('n', '<leader>ep', ':vsplit ~/.profile<CR>', {})

-- Set the window navigation keys
map('n', '<leader>h', '<c-w>h', {})
map('n', '<leader>j', '<c-w>j', {})
map('n', '<leader>k', '<c-w>k', {})
map('n', '<leader>l', '<c-w>l', {})

-- Set the window movement keys
map('n', '<leader>H', '<c-w>H', {})
map('n', '<leader>J', '<c-w>J', {})
map('n', '<leader>K', '<c-w>K', {})
map('n', '<leader>L', '<c-w>L', {})

--Set key to move window to a new tab
map('n', '<leader>t', '<c-w>T', {})

-- Set tab close command
map('n', '<leader>ww', ':tabc<cr><cr>', {})

-- Set to close active window (Currently doesn't seem to be working)
map('n', '<leader>ee', ':<c-w>q<cr>', {})

-- Set the ctrl + s to save while working
map('n', '<c-s>', ':w<cr>', {})

-- Clear search highlighting
map('n', '<leader><space>', ':noh<cr>', {})

-- Set F1 to show current directory
map('n', '<leader>pd', ':pwd<cr>', {})
map('n', '<leader>wd', ':cd d:/git/gtr/sw_dev<cr>', {})
map('n', '<leader>cd', ':cd %:h<cr>', {})

-- [[ nvim-tree keymaps ]]
map('n', '<leader>nf', ':NvimTreeFindFile!<cr>', {})
map('n', '<leader>nn', ':NvimTreeToggle<cr>', {})
map('n', '<leader>nw', ':NvimTreeToggle d:/git/gtr/sw_dev<cr>', {})
map('n', '<c-n>', ':NvimTreeFindFileToggle<CR>', {})

-- [[ telescope keymaps ]]
map('n', '<leader>ff', ":Telescope find_files<cr>", {})
map('n', '<leader>fg', ":Telescope live_grep<cr>", {})
map('n', '<leader>fb', ":Telescope buffers<cr>", {})
map('n', '<leader>fs', ":Telescope grep_string<cr>", {})
map('n', '<leader>gc', ":Telescope git_commits<cr>", {})
map('n', '<leader>gf', ":Telescope git_files<cr>", {})
map( 'n', '<leader>fh', ':Telescope help_tags<CR>', {} )

--[[ aerial keymaps ]]
map('n', '<leader>yy', ":AerialToggle<cr>", {})

--[[ run ctags ]]
map('n', '<F12>', ':!start /b ctags.exe -R --languages=c,c++ --excmd=n . <cr>', {})

--[[ fugitive keymaps ]]
map('n', '<leader>gb', ':Git blame<cr>', {})
map('n', '<leader>gl', ':0Gclog!<cr>', {})
map('n', '<leader>gm', ':Gvdiffsplit! origin/master<cr>', {})
map('n', '<leader>gs', ':Git<cr>', {})

--[[ undotree keymaps ]]
map('n', '<leader>u', ':UndotreeToggle<cr>', {})

--[[ Spruce up the Paste!]]
map('x', '<leader>p', '\'_dP', {})


