local lsp_keymaps = require("utils.lsp_keymaps")
return {
        init_options = { hostInfo = "neovim" },
        cmd = { "typescript-language-server", "--stdio" },
        filetypes = {
                "javascript",
                "javascriptreact",
                "javascript.jsx",
                "typescript",
                "typescriptreact",
                "typescript.tsx",
        },
        root_markers = { "tsconfig.json", "jsconfig.json", "package.json", ".git" },
        on_attach = function(client, bufnr)
                client.server_capabilities.documentFormattingProvider = false
                client.server_capabilities.documentRangeFormattingProvider = false
                lsp_keymaps(bufnr)
        end,
}
