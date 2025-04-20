local config = function()
        vim.api.nvim_set_hl(0, "DapBreakpointHighlight", { fg = "#DC2626" })
        vim.api.nvim_set_hl(0, "DapStoppedHiglight", { fg = "#0DBC79" })
        vim.fn.sign_define(
                "DapBreakpoint",
                { text = "", texthl = "DapBreakpointHighlight", linehl = "", numhl = "" }
        )
        vim.fn.sign_define(
                "DapBreakpointCondition",
                { text = "󰍷", texthl = "DapBreakpointHighlight", linehl = "", numhl = "" }
        )
        vim.fn.sign_define(
                "DapBreakpointRejected",
                { text = "", texthl = "DapBreakpointHighlight", linehl = "", numhl = "" }
        )
        vim.fn.sign_define(
                "DapBreakpointRejected",
                { text = "󰰎", texthl = "DapBreakpointHighlight", linehl = "", numhl = "" }
        )

        vim.fn.sign_define("DapStopped", { text = "", texthl = "DapStoppedHiglight", linehl = "", numhl = "" })

        require("dap").defaults.fallback.switchbuf = "usevisible,usetab,uselast"
end

local keys = {
        {
                "<leader>dl",
                require("utils.dap.handler").launch,
                desc = "Dap Launch",
        },
        {
                "<leader>dt",
                require("utils.dap.handler").terminate,
                desc = "Dap Terminate",
        },
}

return {
        "mfussenegger/nvim-dap",
        dependencies = {
                "theHamsta/nvim-dap-virtual-text",
                opts = {
                        virt_text_pos = "eol",
                        all_frames = true,
                },
                lazy = true,
        },
        config = config,
        keys = keys,
        lazy = true,
}
