local lsp_keymaps = require("utils.lsp_keymaps")

local function organize_imports()
        local params = {
                command = "pyright.organizeimports",
                arguments = { vim.uri_from_bufnr(0) },
        }

        local clients = vim.lsp.get_clients({
                bufnr = vim.api.nvim_get_current_buf(),
                name = "pyright",
        })
        for _, client in ipairs(clients) do
                client:request("workspace/executeCommand", params, nil, 0)
        end
end

--NOTE: https://github.com/neovim/nvim-lspconfig/issues/500#issuecomment-876700701
local function get_python_path()
        local python_path
        if vim.env.VIRTUAL_ENV then
                python_path = vim.env.VIRTUAL_ENV .. "/" .. "bin" .. "/" .. "python"
        else
                python_path = vim.fn.exepath("python3") or vim.fn.exepath("python") or "python"
        end
        return python_path
end

return {
        on_init = function(client)
                client.config.settings.python.pythonPath = get_python_path()
        end,
        cmd = { "pyright-langserver", "--stdio" },
        filetypes = { "python" },
        root_markers = {
                "pyproject.toml",
                "setup.py",
                "setup.cfg",
                "requirements.txt",
                "Pipfile",
                "pyrightconfig.json",
                ".git",
        },
        settings = {
                python = {
                        analysis = {
                                typeCheckingMode = "off",
                        },
                },
        },
        on_attach = function(_, bufnr)
                vim.api.nvim_buf_create_user_command(0, "PyrightOrganizeImports", organize_imports, {
                        desc = "Organize Imports",
                })
                lsp_keymaps(bufnr)
        end,
}
