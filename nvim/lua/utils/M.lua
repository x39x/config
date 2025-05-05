--for Terminal
local M = {}

--FUNC: run
local runCode = {
        markdown = function()
                vim.cmd("silent! !open %")
        end,

        typst = function()
                vim.cmd("silent! !open -a Skim.app %:p:r.pdf")
        end,
}

M.run = function()
        --get current buffer filetype
        local ftp = vim.bo.filetype
        --RUN
        if runCode[ftp] ~= nil then
                runCode[ftp]()
        end
end
--FUNC: tmux
M.tmux_tab_run = function()
        local session_result = vim.system({ "tmux", "display-message", "-p", "#S" }, { text = true }):wait()
        if session_result.code ~= 0 then
                vim.notify("tmux_tab_run: Failed to get tmux session", vim.log.levels.ERROR)
                return
        end
        local session = vim.trim(session_result.stdout)

        local list_result = vim.system({ "tmux", "list-windows", "-F", "#{window_name}" }, { text = true }):wait()
        if list_result.code ~= 0 then
                vim.notify("tmux_tab_run: Failed to list windows", vim.log.levels.ERROR)
                return
        end

        local window_exists = false
        for line in list_result.stdout:gmatch("[^\r\n]+") do
                if vim.trim(line) == "runner" then
                        window_exists = true
                        break
                end
        end
        -- create a runner window
        if not window_exists then
                local new_result = vim.system({ "tmux", "new-window", "-n", "runner" }):wait()
                if new_result.code ~= 0 then
                        vim.notify("tmux_tab_run: Failed to create runner window", vim.log.levels.ERROR)
                        return
                end
        end

        -- send cmd
        vim.system({ "tmux", "send-keys", "-t", session .. ":runner", "make", "C-j" }):wait()
        vim.system({ "tmux", "select-window", "-t", session .. ":runner" }):wait()
end

M.tmux_pane_run = function()
        local function notify_err(msg)
                vim.notify(msg, vim.log.levels.ERROR)
        end

        -- session
        local session_result = vim.system({ "tmux", "display-message", "-p", "#S" }, { text = true }):wait()
        if session_result.code ~= 0 then
                notify_err("Failed to get tmux session")
                return
        end
        local session = vim.trim(session_result.stdout)

        -- window
        local window_result = vim.system({ "tmux", "display-message", "-p", "#I" }, { text = true }):wait()
        if window_result.code ~= 0 then
                notify_err("Failed to get tmux window")
                return
        end
        local window = vim.trim(window_result.stdout)

        -- current  pane_index（如 %1）
        local current_pane_result = vim.system({ "tmux", "display-message", "-p", "#{pane_index}" }, { text = true })
                :wait()
        if current_pane_result.code ~= 0 then
                notify_err("Failed to get current pane index")
                return
        end
        local current_pane_index = vim.trim(current_pane_result.stdout)

        local target_win = string.format("%s:%s", session, window)

        -- check pane 1
        local list_result = vim.system(
                { "tmux", "list-panes", "-t", target_win, "-F", "#{pane_index}" },
                { text = true }
        )
                :wait()
        if list_result.code ~= 0 then
                notify_err("Failed to list panes")
                return
        end

        local panes = vim.split(vim.trim(list_result.stdout), "\n")
        local has_pane1 = vim.tbl_contains(panes, "1")

        -- create  pane1
        if not has_pane1 then
                local split_result = vim.system({
                        "tmux",
                        "split-window",
                        "-h",
                        "-p",
                        "30",
                        "-t",
                        target_win,
                }, { text = true }):wait()
                if split_result.code ~= 0 then
                        notify_err("Failed to create new pane")
                        return
                end

                -- back to pane
                vim.system({ "tmux", "select-pane", "-t", current_pane_index }):wait()
        end

        -- send cmd pane 1
        local send_result = vim.system({ "tmux", "send-keys", "-t", target_win .. ".1", "make", "C-j" }):wait()
        if send_result.code ~= 0 then
                notify_err("Failed to send command to pane 1")
        end
end

--FUNC:
M.BufferPwd = function()
        print(vim.fn.expand("%:p"))
end

--FUNC:
M.cdBufferPwd = function()
        local dir = vim.fn.expand("%:p:h")
        vim.api.nvim_set_current_dir(dir)
        print("change dir to " .. dir)
end

--FUNC:
M.highlightCword = function()
        --":let @/ = expand('<cword>') | set hlsearch<cr>"
        vim.fn.setreg("/", vim.fn.expand("<cword>"))
        vim.opt.hlsearch = true
end

--FUNC:
local trouble = require("trouble")
M.trouble = {}
M.trouble.next = function()
        if trouble.is_open({}) then
                require("trouble").next({ jump = true })
        end
end
M.trouble.prev = function()
        if trouble.is_open({}) then
                require("trouble").prev({ jump = true })
        end
end
M.trouble.close = function()
        if trouble.is_open({}) then
                require("trouble").close()
        end
end

--FUNC:
M.insert_line = function()
        local row, _ = unpack(vim.api.nvim_win_get_cursor(0))
        vim.api.nvim_buf_set_lines(0, row, row, true, { "" })
end

return M
