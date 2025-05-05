local M = {}
local cache_file = vim.fn.stdpath("data") .. "/project_cmd_cache.json"
local cache = {}

-- 加载缓存
local function load_cache()
        local f = io.open(cache_file, "r")
        if f then
                local content = f:read("*a")
                cache = vim.fn.json_decode(content) or {}
                f:close()
        end
end

-- 保存缓存
local function save_cache()
        local f = io.open(cache_file, "w")
        if f then
                f:write(vim.fn.json_encode(cache))
                f:close()
        end
end

-- 获取项目根目录（或 fallback 为当前文件目录）
local function get_project_root()
        local markers = {
                "go.mod",
                "Cargo.toml",
                "pyproject.toml",
                "setup.py",
                "CMakeLists.txt",
                "Makefile",
                "package.json",
                ".git",
        }
        local filepath = vim.fn.expand("%:p")
        local dir = vim.fn.fnamemodify(filepath, ":h")

        for _, marker in ipairs(markers) do
                local found = vim.fn.findfile(marker, dir .. ";")
                if found ~= "" then
                        return vim.fn.fnamemodify(found, ":h")
                end
        end

        return dir
end

-- 执行或缓存
function M.run_or_cache(key)
        load_cache()
        local root = get_project_root()
        local id = root .. "::" .. key
        local cmd = cache[id]

        if cmd then
                vim.cmd(cmd)
        else
                vim.ui.input({ prompt = "Enter command for '" .. key .. "': " }, function(input)
                        if input and input ~= "" then
                                cache[id] = input
                                save_cache()
                                vim.cmd(input)
                        else
                                print("No command entered.")
                        end
                end)
        end
end

-- 清除当前项目缓存
function M.clear_current(key)
        load_cache()
        local root = get_project_root()
        local id = root .. "::" .. key
        cache[id] = nil
        save_cache()
        print("Cleared cache for key '" .. key .. "' in current project.")
end

-- 清除所有缓存
function M.clear_all()
        cache = {}
        save_cache()
        print("Cleared all project command cache.")
end

return M
