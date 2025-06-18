local config = require('Comment')

config.setup()

-- [[ Garmin Comment function attempts ]]

function Garmin_Comment()
    local cursor_line = vim.fn.line('.')
    local cursor_col = vim.fn.virtcol('.')
    local indent = vim.fn.indent(cursor_line - 1)
    local max_width = 78

    local comment_start = string.rep(' ', indent) .. '/*'
    local comment_body = string.rep(' ', #comment_start)

    -- Calculate the remaining width for the comment body
    local remaining_width = max_width - #comment_start

    -- Adjust the comment body width based on current column
    if cursor_col > indent + #comment_start then
        remaining_width = remaining_width - (cursor_col - (indent + #comment_start))
    end

    local comment_text = comment_start .. string.rep('-', remaining_width)
    local comment_end = string.rep(' ', indent) .. string.rep('-', remaining_width) .. '*/'
    local blank_line = string.rep(' ', indent)

    local comment_lines = {comment_end, blank_line, comment_text}

    -- Insert the comment lines above the current line
    for i = 1, #comment_lines do
        vim.fn.append(cursor_line - 1, comment_lines[i])
    end

    -- Move cursor back to the original line
    vim.fn.cursor((cursor_line + 1), cursor_col)
end


