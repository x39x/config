local M = {}
local lsp_keymaps = require("utils.lsp_keymaps")
local servers = {
        "lua_ls",
        "gopls",
        "clangd",
        "rust_analyzer",

        "ruff",
        "pyright",

        "ts_ls",
        "tailwindcss",

        -- "racket_langserver",
        -- "jsonls",
}

M[#M + 1] = {
        "williamboman/mason.nvim",
        opts = function()
                vim.lsp.config("*", {
                        on_attach = function(_, bufnr)
                                lsp_keymaps(bufnr)
                        end,
                })
                vim.lsp.enable(servers)
                return {
                        max_concurrent_installers = 10,
                        ui = {
                                icons = {
                                        package_installed = "",
                                        package_pending = "",
                                        package_uninstalled = "",
                                },
                                border = "single",
                        },
                }
        end,
        dependencies = "saghen/blink.cmp",
}

M[#M + 1] = {
        "nvimtools/none-ls.nvim",
        config = function()
                local null_ls = require("null-ls")
                local formatting = null_ls.builtins.formatting
                null_ls.setup({
                        debug = false,
                        sources = {
                                -- To increase speed, try prettierd.
                                formatting.prettier.with({
                                        extra_args = { "--tab-width", "4" },
                                        extra_filetypes = { "json5", "toml" },
                                }),
                                formatting.stylua.with({
                                        extra_args = { "--indent-width", "8", "--indent-type", "Spaces" },
                                }),
                        },
                        on_attach = function(_, bufnr)
                                vim.api.nvim_buf_create_user_command(bufnr, "F", function()
                                        vim.lsp.buf.format({ async = true })
                                end, {})
                        end,
                })
        end,
        dependencies = "williamboman/mason.nvim",
}

return M
