local M = {}

--PLUG: alpha
M[#M + 1] = {
        "goolord/alpha-nvim",
        opts = {
                layout = {
                        --val c:2 a:9
                        { type = "padding", val = 7 },
                        {
                                type = "text",
                                val = require("utils.header").a,
                                opts = {
                                        position = "center",
                                        hl = "AlphaHeader",
                                },
                        },
                },
                opts = {
                        margin = 5,
                },
        },
}

--PLUG:
M[#M + 1] = {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {
                scope = {
                        enabled = false,
                },
                indent = {
                        char = "│",
                        tab_char = "│",
                },
                exclude = {
                        filetypes = {
                                "help",
                                "Trouble",
                                "alpha",
                                "typst",
                                "markdown",
                        },
                        buftypes = {
                                "terminal",
                                "nofile",
                        },
                },
        },
        event = "VeryLazy",
}

M[#M + 1] = {
        "rebelot/heirline.nvim",
        dependencies = {
                "nvim-tree/nvim-web-devicons",
        },
        opts = require("utils.39line"),
}

M[#M + 1] = {
        "brenoprata10/nvim-highlight-colors",
        opts = {},
}

--PLUG:
M[#M + 1] = {
        "projekt0n/github-nvim-theme",
        main = "github-theme",
        opts = {
                groups = {
                        all = {
                                TabLineSel = { fg = "palette.red", bg = "bg", bold = true },
                                BlinkCmpKind = { link = "KeyWord" },
                                AlphaHeader = { fg = "#39C5BB" },
                        },
                },
        },
        lazy = true,
}

M[#M + 1] = {
        "lunacookies/vim-colors-xcode",
        lazy = true,
}

return M
