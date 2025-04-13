local M = {
        "nvim-tree/nvim-tree.lua"
}
M.dependencies = {
        "nvim-tree/nvim-web-devicons",
}

local on_attach = function(bufnr)
        local api = require "nvim-tree.api"
        local keymap_set = vim.keymap.set
        local keymap_del = vim.keymap.del

        local function make_opts(desc)
                return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
        end
        local function parent_root_and_collapse()
                api.tree.change_root_to_parent()
                api.tree.collapse_all()
        end

        api.config.mappings.default_on_attach(bufnr)

        keymap_del("n", "f", { buffer = bufnr })
        keymap_del("n", "F", { buffer = bufnr })
        keymap_del("n", "y", { buffer = bufnr })
        keymap_del("n", "d", { buffer = bufnr })
        keymap_del("n", "gy", { buffer = bufnr })
        keymap_del("n", "P", { buffer = bufnr })
        keymap_del("n", "s", { buffer = bufnr })
        keymap_del("n", "x", { buffer = bufnr })
        keymap_del("n", "c", { buffer = bufnr })

        keymap_set("n", "l", api.tree.change_root_to_node, make_opts "next")
        keymap_set("n", "i", api.node.navigate.parent, make_opts "parent")
        keymap_set("n", "h", parent_root_and_collapse, make_opts "pre")
        keymap_set("n", "yy", api.fs.copy.node, make_opts "copy")
        keymap_set("n", "dd", api.fs.remove, make_opts "delete")
        keymap_set("n", "cc", api.fs.cut, make_opts "delete")
        keymap_set("n", "=", api.node.run.system, make_opts "open system")
        keymap_set("n", "Y", api.fs.copy.absolute_path, make_opts "absolute_path")
end

M.opts = {
        on_attach = on_attach,
        disable_netrw = true,
        hijack_netrw = true,
        hijack_cursor = true,
        hijack_unnamed_buffer_when_opening = false,
        sync_root_with_cwd = true,
        update_focused_file = {
                enable = true,
                update_root = false,
        },
        view = {
                adaptive_size = false,
                side = "right",
                width = "17%",
                preserve_window_proportions = true,
        },
        filesystem_watchers = { enable = true },
        actions = {
                open_file = {
                        resize_window = true,
                        quit_on_open = true,
                },
        },
        renderer = {
                root_folder_label = false,
                highlight_git = true,
                highlight_opened_files = "none",
                icons = { show = { git = false, } }
        },
        filters = {
                dotfiles = false,
                custom = {
                        ".DS_Store",
                }
        },
}

return M
