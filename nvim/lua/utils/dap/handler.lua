local M = {}

M.launch = function()
        local keymap = require("utils.dap.keymap")
        local buf = vim.api.nvim_get_current_buf()
        local ft = vim.bo[buf].filetype

        vim.notify("Launch DAP for " .. ft, vim.log.levels.INFO)

        local ok, dap_config = pcall(require, "utils.dap." .. ft)
        if ok then
                dap_config()
                keymap.set(buf)
        else
                vim.notify("NO DAP for " .. ft, vim.log.levels.WARN)
        end
end

M.terminate = function()
        local dap = require("dap")
        local keymap = require("utils.dap.keymap")
        local buf = vim.api.nvim_get_current_buf()

        dap.terminate()
        dap.clear_breakpoints()
        keymap.clear(buf)
        vim.notify("Terminate DAP ", vim.log.levels.INFO)
end

return M
