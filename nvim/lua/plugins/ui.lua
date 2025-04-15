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
                                        hl = "KeyWord",
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
        opts = require("39.heirline"),
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
        -- lazy = true
}

--PLUG:
M[#M + 1] = {
        "projekt0n/github-nvim-theme",
        priority = 1000,
        config = function()
                require("github-theme").setup({
                        groups = {
                                all = {
                                        TabLineSel = { fg = "palette.red", bg = "bg", bold = true },
                                        BlinkCmpKind = { link = "KeyWord" },
                                },
                        },
                })
                vim.cmd.colorscheme("github_light")
                -- vim.cmd.colorscheme "github_dark"
        end,
}

M[#M + 1] = {
        "lunacookies/vim-colors-xcode",
}

return M
