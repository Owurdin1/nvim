--[[ opts.lua ]]
local opt = vim.opt
local cmd = vim.api.nvim_command

--[[ Context ]]
--opt.colorcolumn = '120' 				-- str: Show col for max line length
opt.number = true					-- bool: Show line numbers
opt.relativenumber = true				-- bool: Show relative line number
opt.scrolloff = 2					-- int: Min num lines of context
opt.signcolumn = 'yes' 					-- str Show the sign column
opt.ruler = true 					-- bool: Turn on ruler to show line numbers
opt.showcmd = true 					-- bool: Turn on the show command

--[[ Filetypes ]]
opt.encoding = 'utf8' 					-- str: Show the sign column
opt.fileencoding = 'utf8'				-- str: File encoding to use

--[[ Theme ]] 
opt.syntax = 'ON' 					-- str: Allow syntax highlighting
opt.termguicolors = true 				-- bool: If term supports ui colors then enable
opt.conceallevel = 0 					-- num: Option for conceal level

--[[ Search ]]
opt.ignorecase = true					-- bool: Ignore case in search in patterns
opt.smartcase = true 					-- bool: Override ignore case if search contains capitals
opt.incsearch = true 					-- bool: Use incremental search
opt.hlsearch = true 					-- bool: Highlight saerch matches

--[[ Whitespace ]] 
opt.expandtab = true					-- bool: Use spaces instead of tabs
opt.shiftwidth = 4					-- num: Size of an indent
opt.softtabstop = 4 					-- num: Number of spaces tabs count for in insert mode
opt.smartindent = true 					-- bool: Set smart indent
opt.autoindent = true 					-- bool: Set auto indent feature

--[[ Splits Window Options ]] 
opt.splitright = true                                   -- bool: Place new window to the right of current one
opt.splitbelow = true                                   -- bool: Place new window below the current one

--[[ Status ]]
opt.laststatus = 2                                      -- num: Option for the status bar presence

--[[ Wildmenu ]] 
opt.wildmenu = true                                     -- bool: Enable wildmenu option

--[[ Error Options ]]
opt.errorbells = false                                  -- bool: disable error bells

--[[ Buffers Options ]]
opt.hidden = true                                       -- bool: Don't warn about unsaved buffers

--[[ Line Options ]]
opt.linebreak = true                                    -- bool: Set wrapping to wrap word and not at character

--[[ Backspace Options ]]
opt.backspace = 'indent,eol,start'                      -- str: Set the backspace to behave as expected

--[[ Diff Options ]]
opt.diffopt = 'vertical,internal,filler,closeoff,followwrap' 
                                                        -- str: Set the diff options to use followwrap, filler
                                                        -- closeoff, internal diff, and be vertical split.
                                                        -- Check :help diffopt for reference to these options







