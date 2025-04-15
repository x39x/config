local M = {}

local dap_keymaps = {
        {
                mode = "n",
                lhs = "r",
                rhs = function()
                        require("dap").repl.open({ height = 10 })
                end,
                desc = "DAP REPL",
        },
        {
                mode = "n",
                lhs = "n",
                rhs = function()
                        require("dap").continue()
                end,
                desc = "DAP Continue",
        },
        {
                mode = "n",
                lhs = "p",
                rhs = function()
                        require("dap").toggle_breakpoint()
                end,
                desc = "DAP Toggle Breakpoint",
        },
}
function M.set(buf)
        local opts = { noremap = true, silent = true, buffer = buf }
        for _, map in ipairs(dap_keymaps) do
                vim.keymap.set(map.mode, map.lhs, map.rhs, vim.tbl_extend("force", opts, { desc = map.desc }))
        end
end

function M.clear(buf)
        for _, map in ipairs(dap_keymaps) do
                pcall(vim.keymap.del, map.mode, map.lhs, { buffer = buf })
        end
end

return M
