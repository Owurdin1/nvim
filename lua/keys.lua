--[[ keys.lua ]]
local map = vim.api.nvim_set_keymap

--remap the key used to leave insert mode
map('i', 'jk', '<Esc>', {})

-- map ev to change/edit init.lua in split screen
-- This is the unix path!
-- map('n', '<leader>ev', ':vsplit ~/.config/nvim/init.lua<CR>', {})
map('n', '<leader>ev', ':vsplit ~/AppData/Local/nvim/init.lua<CR>', {})
map('n', '<leader>sv', ':luafile ~/AppData/Local/nvim/init.lua<CR>', {})
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
map('n', '<F1>', ':pwd<cr>', {})
map('n', '<F2>', ':cd d:/git/gtr/sw_dev<cr>', {})

-- [[ nvim-tree keymaps ]]
map('n', '<leader>nf', ':NvimTreeFindFile!<cr>', {})
map('n', '<leader>nn', ':NvimTreeToggle<cr>', {})
map('n', '<leader>nw', ':NvimTreeToggle d:/git/gtr/sw_dev<cr>', {})

-- [[ telescope keymaps ]]
map('n', '<leader>ff', ":Telescope find_files<cr>", {})
map('n', '<leader>fg', ":Telescope live_grep<cr>", {})
map('n', '<leader>fb', ":Telescope buffers<cr>", {})

--[[ aerial keymaps ]]
map('n', '<leader>yy', ":AerialToggle<cr>", {})

--[[ run ctags ]]
map('n', '<F12>', ':!start /b ctags.exe -R --languages=c,c++ --excmd=n . <cr>', {})

--[[ fugitive keymaps ]]
map('n', '<leader>gb', ':Git blame<cr>', {})
map('n', '<leader>gl', ':0Gclog!<cr>', {})
map('n', '<leader>gm', ':Gvdiffsplit! origin/master<cr>', {})

