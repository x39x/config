local M = {}

--PLUG: alpha
M[#M + 1] = {
        "goolord/alpha-nvim",
        opts = {
                layout = {

                        --val c:2 a:9
                        { type = "padding", val = 8 },
                        {
                                type = "text",
                                val = require("39.header").a,
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
                "neovim/nvim-lspconfig",
        },
        opts = require("39.39line"),
}

M[#M + 1] = {
        "NvChad/nvim-colorizer.lua",
        opts = {
                user_default_options = {
                        RGB = false,
                        names = false,
                        RRGGBB = true,
                },
        },
        cmd = "ColorizerToggle",
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
                        },
                },
        },
        lazy = true,
}

M[#M + 1] = {
        "lunacookies/vim-colors-xcode",
        lazy = true,
}

M[#M + 1] = {
        -- "x39x/39light.nvim",
        dir = "~/Dev/project/39light.nvim/",
        priority = 1000,
        config = function()
                vim.cmd.colorscheme("39light")
                -- vim.cmd.colorscheme("min-dark")
        end,
        dependencies = {
                "wesleimp/min-theme.nvim",
        },
}

return M
