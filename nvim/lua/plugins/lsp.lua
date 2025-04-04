local M = {
        "neovim/nvim-lspconfig",
}
local servers = {
        "lua_ls",
        "clangd",
        "rust_analyzer",
        "gopls",
        "pyright",


        "ts_ls",
        "tailwindcss",
        -- "racket_langserver",
}

local function lsp_keymaps(bufnr)
        --  vim.lsp.buf.references()
        --  vim.lsp.buf.rename()
        --  vim.lsp.buf.definition()
        --  vim.lsp.buf.code_action()
        --  vim.lsp.diagnostic.show_line_diagnostics({ border = "rounded" })
        --  vim.diagnostic.setloclist()

        local opts = { noremap = true, silent = true, buffer = bufnr, }
        local keymap = vim.keymap.set
        keymap("n", "gt", vim.lsp.buf.signature_help, opts)
        keymap("n", "gD", vim.lsp.buf.declaration, opts)
        keymap("n", "gd", require('telescope.builtin').lsp_definitions, opts)
        keymap("n", "gl", vim.lsp.buf.hover, opts)
        keymap("n", "go", require('telescope.builtin').lsp_implementations, opts)
        keymap("n", "gn", require('utils.M').rename, opts)
        keymap("n", "gr", require('telescope.builtin').lsp_references, opts)
        keymap("n", "ga", vim.diagnostic.open_float, opts)
        keymap("n", ";p", function() vim.diagnostic.goto_prev({ border = "single" }) end, opts)
        keymap("n", ";n", function() vim.diagnostic.goto_next({ border = "single" }) end, opts)
        vim.api.nvim_create_user_command('Format', function() vim.lsp.buf.format { async = true } end, {})
end


M.dependencies = {
        "hrsh7th/cmp-nvim-lsp",
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
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local on_attach = function(client, bufnr)
                -- ???
                if client.name == "ts_ls" then
                        client.server_capabilities.documentFormattingProvider      = false
                        client.server_capabilities.documentRangeFormattingProvider = false
                end
                lsp_keymaps(bufnr)
        end

        --  cmp
        local capabilities = vim.lsp.protocol.make_client_capabilities()
        capabilities = cmp_nvim_lsp.default_capabilities(capabilities)

        for _, server in pairs(servers) do
                local opts = {
                        on_attach = on_attach,
                        capabilities = capabilities,
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
