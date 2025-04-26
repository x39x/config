return {
        cmd = { "lua-language-server" },
        filetypes = { "lua" },
        root_markers = {
                ".luarc.json",
                ".luarc.jsonc",
                ".luacheckrc",
                ".stylua.toml",
                "stylua.toml",
                "selene.toml",
                "selene.yml",
                ".git",
        },

        settings = {
                Lua = {
                        diagnostics = {
                                globals = { "vim" },
                                disable = { "missing-fields", "undefined-field" },
                        },
                        workspace = {
                                library = {
                                        vim.fn.expand("$VIMRUNTIME/lua"),
                                        vim.fn.expand("$VIMRUNTIME/lua/vim/lsp"),
                                        vim.fn.stdpath("data") .. "/lazy/lazy.nvim/lua/lazy",
                                        "${3rd}/luv/library",
                                },
                                maxPreload = 100000,
                                preloadFileSize = 10000,
                        },
                        format = {
                                enable = false,
                        },
                        semantic = {
                                variable = false,
                        },
                },
        },
}
