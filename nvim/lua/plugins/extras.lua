local M = {}
M[#M + 1] = {
        "ibhagwan/fzf-lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        opts = {
                winopts = {
                        height = 0.37,
                        width = 1,
                        row = 1,
                        col = 0,
                        backdrop = 100,
                        border = { "─", "─", "─", " ", " ", " ", " ", " " },
                        preview = {
                                border = { "─", "─", "─", " ", " ", " ", " ", " " },
                                horizontal = "right:50%",
                                title = false,
                                scrollbar = false,
                                winopts = {
                                        number = false,
                                },
                        },
                },
                files = { previewer = false },
                oldfiles = { previewer = false },
        },
        event = "VeryLazy",
}

--PLUG: oil
M[#M + 1] = {
        "stevearc/oil.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = {
                default_file_explorer = false,
                delete_to_trash = true,
                skip_confirm_for_simple_edits = true,
                watch_for_changes = true,
                use_default_keymaps = false,
                keymaps = {
                        ["g?"] = { "actions.show_help", mode = "n" },
                        ["<C-R>"] = "actions.refresh",
                        ["<CR>"] = "actions.select",
                        ["<C-s>"] = { "actions.select", opts = { vertical = true } },
                        ["<C-v>"] = { "actions.select", opts = { horizontal = true } },
                        ["<C-t>"] = { "actions.select", opts = { tab = true } },
                        ["q"] = { "actions.close", mode = "n" },
                        ["H"] = { "actions.parent", mode = "n" },
                        ["L"] = "actions.select",
                        ["="] = "actions.open_external",
                        ["gs"] = { "actions.change_sort", mode = "n" },
                        ["."] = { "actions.toggle_hidden", mode = "n" },
                        [","] = { "actions.open_cwd", mode = "n" },
                        ["`"] = { "actions.cd", mode = "n" },
                        ["~"] = { "actions.cd", opts = { scope = "tab" }, mode = "n" },
                },
                view_options = {
                        show_hidden = true,
                },
                float = {
                        padding = 0,
                        border = "single",
                        get_win_title = nil,
                        preview_split = "auto",
                        override = function(conf)
                                local ui = vim.api.nvim_list_uis()[1]
                                local sidebar_width = math.floor(ui.width * 0.17)

                                -- send to nvim_open_win.
                                conf = {
                                        relative = "editor",
                                        width = sidebar_width,
                                        height = ui.height,
                                        row = 0,
                                        col = ui.width - sidebar_width,
                                        style = "minimal",
                                        border = "single",
                                }

                                return conf
                        end,
                },
        },
        event = "VeryLazy",
}

M[#M + 1] = {
        "NeogitOrg/neogit",
        dependencies = {
                "nvim-lua/plenary.nvim", -- required

                -- Only one of these is needed.
                "nvim-telescope/telescope.nvim", -- optional
        },
        config = true,
}
return M
