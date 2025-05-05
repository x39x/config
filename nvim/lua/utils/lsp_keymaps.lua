local lsp_rename = function()
        local current_word = vim.fn.expand("<cword>")
        local prompt = "New name for '" .. current_word .. "': "
        vim.ui.input({ prompt = prompt, default = "" }, function(new_name)
                if new_name and new_name ~= "" and new_name ~= current_word then
                        vim.lsp.buf.rename(new_name)
                end
        end)
end
local border = { " ", " ", " ", " ", " ", " ", " ", " " }
return function(bufnr)
        local opts = {
                noremap = true,
                silent = true,
                buffer = bufnr,
        }
        local keymap = vim.keymap.set

        keymap("n", "gl", function()
                vim.lsp.buf.hover({
                        border = border,
                })
        end, opts)
        keymap("n", "ga", function()
                vim.diagnostic.open_float({
                        border = "single",
                })
        end, opts)
        keymap("n", "ge", function()
                vim.lsp.buf.signature_help({
                        border = border,
                })
        end, opts)
        keymap("n", "gD", vim.lsp.buf.declaration, opts)
        keymap("n", "gd", require("telescope.builtin").lsp_definitions, opts)
        keymap("n", "go", require("telescope.builtin").lsp_implementations, opts)
        keymap("n", "gr", require("telescope.builtin").lsp_references, opts)
        keymap("n", "gn", lsp_rename, opts)

        keymap("n", "<leader>;j", function()
                vim.diagnostic.jump({ count = -1, float = true })
        end, opts)
        keymap("n", "<leader>;k", function()
                vim.diagnostic.jump({ count = 1, float = true })
        end, opts)
        keymap("n", "<leader>ca", vim.lsp.buf.code_action, opts)

        vim.api.nvim_buf_create_user_command(bufnr, "F", function()
                vim.lsp.buf.format({ async = true })
        end, {})
end
