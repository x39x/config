local M = {
        "neovim/nvim-lspconfig",
        event = "VeryLazy",

}
local servers = {
        "lua_ls",
        "clangd",
        "gopls",
        "pyright",
        "rust_analyzer",

        "ts_ls",
        "tailwindcss",
        -- "racket_langserver",
}


local function lsp_keymaps(bufnr)
        local opts = { noremap = true, silent = true, buffer = bufnr, }
        local keymap = vim.keymap.set

        keymap("n", "gl", function()
                vim.lsp.buf.hover({
                        border = "single",
                })
        end, opts)
        keymap("n", "ga", function()
                vim.diagnostic.open_float({
                        border = "single",
                })
        end, opts)
        keymap("n", "ge", function()
                vim.lsp.buf.signature_help {
                        border = "single",
                }
        end, opts)
        keymap("n", "gD", vim.lsp.buf.declaration, opts)
        keymap("n", "gd", require('telescope.builtin').lsp_definitions, opts)
        keymap("n", "go", require('telescope.builtin').lsp_implementations, opts)
        keymap("n", "gr", require('telescope.builtin').lsp_references, opts)
        keymap("n", "gn", require('utils.M').rename, opts)
        keymap('n', '<leader>;j', function()
                vim.diagnostic.jump({ count = -1, float = true })
        end)
        keymap('n', '<leader>;k', function()
                vim.diagnostic.jump({ count = 1, float = true })
        end)
        vim.api.nvim_create_user_command('F', function() vim.lsp.buf.format { async = true } end, {})
end


M.dependencies = {
        {
                "williamboman/mason.nvim",
                opts = {
                        max_concurrent_installers = 10,
                        ui = {
                                icons = {
                                        package_installed = "",
                                        package_pending = "",
                                        package_uninstalled = "",
                                },
                                border = "single",
                        },

                }
        },
        {
                "nvimtools/none-ls.nvim",
                config = function()
                        local null_ls = require("null-ls")
                        local formatting = null_ls.builtins.formatting
                        null_ls.setup({
                                debug = false,
                                sources = {
                                        formatting.black,
                                        formatting.prettier.with {
                                                extra_args = { "--tab-width", "4" },
                                        },
                                },
                        })
                end,
        },

}

M.config = function()
        local lspconfig = require("lspconfig")

        local on_attach = function(client, bufnr)
                -- ???
                if client.name == "ts_ls" then
                        client.server_capabilities.documentFormattingProvider      = false
                        client.server_capabilities.documentRangeFormattingProvider = false
                end
                lsp_keymaps(bufnr)
        end

        for _, server in pairs(servers) do
                local opts = {
                        on_attach = on_attach,
                }
                local has_custom_opts, server_custom_opts = pcall(require,
                        "utils.lsp_settings." .. server)
                if has_custom_opts then
                        opts = vim.tbl_deep_extend("force", opts, server_custom_opts)
                end
                lspconfig[server].setup(opts)
        end
end




return M
