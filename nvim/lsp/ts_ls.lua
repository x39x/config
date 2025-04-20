local lsp_keymaps = require("utils.lsp_keymaps")
return {
        on_attach = function(client, bufnr)
                if client == nil then
                        return
                end
                client.server_capabilities.documentFormattingProvider = false
                client.server_capabilities.documentRangeFormattingProvider = false
                lsp_keymaps(bufnr)
        end,
}
