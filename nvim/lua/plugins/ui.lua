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
                                val = require('utils.header').a,
                                opts = {
                                        position = "center",
                                        hl = "KeyWord",
                                },

                        },
                },
                opts = {
                        margin = 5,
                },

        }
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
                        }
                }
        },
        event = "VeryLazy",

}


M[#M + 1] = {
        "rebelot/heirline.nvim",
        dependencies = {
                "nvim-tree/nvim-web-devicons",
                'neovim/nvim-lspconfig',
                'mfussenegger/nvim-dap',
                "rcarriga/nvim-dap-ui",
        },
        opts = require("utils.heirline")
}


M[#M + 1] = {
        'NvChad/nvim-colorizer.lua',
        opts = {
                user_default_options = {
                        RGB = false,
                        names = false,
                        RRGGBB = true,
                }
        },
        config = false,
}

--PLUG:
M[#M + 1] = {
        'projekt0n/github-nvim-theme',
        opts = {},
        config = function()
                vim.cmd.colorscheme "github_light"
                -- vim.cmd.colorscheme "github_dark"
        end,
        dependencies = {
                "lunacookies/vim-colors-xcode",
        }
}


return M
