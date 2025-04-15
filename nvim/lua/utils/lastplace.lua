local bo = vim.bo
local api = vim.api
local cmd = vim.cmd

local M = {}

local config = {
        ignore_filetype = { "gitcommit", "gitrebase", "svn", "hgcommit" },
        ignore_buftype = { "quickfix", "nofile", "help", "prompt", "terminal" },
}

M.set_cursor_position = function()
        if vim.tbl_contains(config.ignore_buftype, bo.buftype) then
                return
        end
        if vim.tbl_contains(config.ignore_filetype, bo.filetype) then
                return
        end

        if api.nvim_buf_get_name(0) == "" then
                return
        end

        local cursor_position = api.nvim_buf_get_mark(0, '"')
        local row, col = cursor_position[1], cursor_position[2]

        if row > 0 and row <= api.nvim_buf_line_count(0) then
                local win_height = vim.fn.line("w$") - vim.fn.line("w0")
                local lines_after_cursor = api.nvim_buf_line_count(0) - row

                api.nvim_win_set_cursor(0, { row, col })

                if api.nvim_buf_line_count(0) == vim.fn.line("w$") then
                -- Do nothing, just moved the cursor
                elseif lines_after_cursor > (win_height / 2 - 1) then
                        cmd.normal("zz")
                else
                        api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<C-e>", true, false, true), "n", false)
                end
        end
end

return M
