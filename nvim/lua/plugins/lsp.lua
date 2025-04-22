local M = {}
local lsp_keymaps = require("utils.lsp_keymaps")
local servers = {
        "lua_ls",
        "pyright",
        "clangd",
        "gopls",

        "ts_ls",
        "tailwindcss",

        -- "rust_analyzer",
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

local function on_attach(client, bufnr)
        if client.name ~= "xxx" then
                vim.api.nvim_buf_create_user_command(bufnr, "F", function()
                        vim.lsp.buf.format({ async = true })
                end, {})
        end
end
M[#M + 1] = {
        "nvimtools/none-ls.nvim",
        config = function()
                local null_ls = require("null-ls")
                local formatting = null_ls.builtins.formatting
                null_ls.setup({
                        debug = false,
                        sources = {
                                formatting.black,
                                -- To increase speed, try prettierd.
                                formatting.prettier.with({
                                        extra_args = { "--tab-width", "4" },
                                        extra_filetypes = { "json5" },
                                }),
                                formatting.stylua.with({
                                        extra_args = { "--indent-width", "8", "--indent-type", "Spaces" },
                                }),
                        },
                        on_attach = on_attach,
                })
        end,
        dependencies = "williamboman/mason.nvim",
}

return M
