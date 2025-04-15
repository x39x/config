local function find_project_root(start_path)
        local Path = require("plenary.path")
        local current = Path:new(start_path)

        while current:absolute() ~= Path:new(vim.loop.os_homedir()):absolute() do
                if
                        current:joinpath("Makefile"):exists()
                        or current:joinpath(".git"):exists()
                        or current:joinpath("CMakeLists.txt"):exists()
                then
                        return current:absolute()
                end
                current = current:parent()
        end

        return nil
end

local function find_debug_executable()
        local Path = require("plenary.path")
        local current_file = vim.api.nvim_buf_get_name(0)
        if current_file == "" then
                return vim.fn.input("Path to executable: ", vim.fn.getcwd() .. "/", "file"), vim.fn.getcwd()
        end

        local start_path = Path:new(current_file):parent()
        local root = find_project_root(start_path:absolute())

        if root then
                local dbg_path = Path:new(root, "debug", "dbg")
                if dbg_path:exists() then
                        return dbg_path:absolute(), root
                end
        end

        local fallback_dbg = Path:new(start_path, "debug", "dbg")
        if fallback_dbg:exists() then
                return fallback_dbg:absolute(), start_path:absolute()
        end

        local manual = vim.fn.input("Path to executable: ", start_path:absolute() .. "/", "file")
        return manual, start_path:absolute()
end

local cpp = {}
local program_path, project_root = find_debug_executable()

local lldb = {
        type = "executable",
        command = "/System/Volumes/Data/Library/Developer/CommandLineTools/usr/bin/lldb-dap",
        name = "lldb",
}

cpp[#cpp + 1] = {
        name = "Launch",
        type = "lldb",
        request = "launch",
        program = program_path,
        cwd = project_root,
        args = {},
}

return function()
        local Path = require("plenary.path")
        local lldb_bin = Path:new(lldb.command)
        if not lldb_bin:exists() then
                vim.notify("LLDB binary not found: " .. lldb.command, vim.log.levels.WARN)
                return
        end
        local dap = require("dap")
        dap.adapters.lldb = lldb
        dap.configurations.cpp = cpp
end
