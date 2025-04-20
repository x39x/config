local M = {}
local lsp_keymaps = require("utils.lsp_keymaps")
local servers = {
        "lua_ls",
        "clangd",
        "gopls",
        "pyright",
        "rust_analyzer",

        "ts_ls",
        -- "tailwindcss",
        -- "racket_langserver",
}

M[#M + 1] = {
        "neovim/nvim-lspconfig",
        config = function()
                vim.lsp.config("*", {
                        on_attach = function(client, bufnr)
                                if client == nil then
                                        return
                                end
                                lsp_keymaps(bufnr)
                        end,
                })

                vim.lsp.enable(servers)
        end,
        dependencies = {
                "saghen/blink.cmp",
                "nvimtools/none-ls.nvim",
        },
}

M[#M + 1] = {
        "williamboman/mason.nvim",
        opts = {
                max_concurrent_installers = 10,
                ui = {
                        icons = {
                                package_installed = "",
                                package_pending = "",
                                package_uninstalled = "",
                        },
                        border = "single",
                },
        },
}

M[#M + 1] = {
        "nvimtools/none-ls.nvim",
        config = function()
                local null_ls = require("null-ls")
                local formatting = null_ls.builtins.formatting
                null_ls.setup({
                        debug = false,
                        sources = {
                                formatting.black,
                                formatting.prettier.with({
                                        extra_args = { "--tab-width", "4" },
                                }),
                                formatting.stylua.with({
                                        extra_args = { "--indent-width", "8", "--indent-type", "Spaces" },
                                }),
                        },
                })
        end,
}

return M
