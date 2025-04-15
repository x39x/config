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

--FUNC:
M.rename = function()
        local current_word = vim.fn.expand("<cword>")
        local prompt = "New name for '" .. current_word .. "': "
        vim.ui.input({ prompt = prompt, default = "" }, function(new_name)
                if new_name and new_name ~= "" and new_name ~= current_word then
                        vim.lsp.buf.rename(new_name)
                end
        end)
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

return M
