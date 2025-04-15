local function find_project_root(start_path)
        local Path = require("plenary.path")
        local current = Path:new(start_path)

        while current:absolute() ~= Path:new(vim.loop.os_homedir()):absolute() do
                if current:joinpath("uv.lock"):exists() or current:joinpath(".git"):exists() then
                        return current:absolute()
                end
                current = current:parent()
        end

        return nil
end

local function find_debug_file()
        local Path = require("plenary.path")
        local current_file = vim.api.nvim_buf_get_name(0)
        if not current_file or current_file == "" then
                return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file")
        end

        local start_path = Path:new(current_file):parent()
        local root = find_project_root(start_path:absolute())

        if root then
                local dbg_path = Path:new(root, "main.py")
                if dbg_path:exists() then
                        return dbg_path:absolute()
                end
        end

        local fallback_dbg = Path:new(start_path, "main.py")
        if fallback_dbg:exists() then
                return fallback_dbg:absolute()
        end

        local manual = vim.fn.input("Path to executable: ", start_path:absolute() .. "/", "file")
        return manual
end

local function get_python_path()
        local python_path
        if vim.env.VIRTUAL_ENV then
                python_path = vim.env.VIRTUAL_ENV .. "/" .. "bin" .. "/" .. "python"
        else
                python_path = vim.fn.exepath("python3") or vim.fn.exepath("python") or "python"
        end
        return python_path
end

--NOTE: config
local python = {}
local python_path = get_python_path()
local debug_file = find_debug_file()

local debugpy = {
        command = python_path,
        type = "executable",
        args = { "-m", "debugpy.adapter" },
        name = "debugpy",
}

python[#python + 1] = {
        type = "debugpy",
        name = "Launch File",
        request = "launch",
        program = debug_file,
        pythonPath = python_path,
}

return function()
        local dap = require("dap")
        dap.adapters.debugpy = debugpy
        dap.configurations.python = python
end
