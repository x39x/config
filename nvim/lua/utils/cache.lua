local Path = require("plenary.path")

local M = {}
local cache_path = Path:new(vim.fn.stdpath("data"), "project_cmd_cache.json")
local cache = {}

-- 加载 JSON 缓存
local function load_cache()
        if cache_path:exists() then
                local content = cache_path:read()
                cache = vim.fn.json_decode(content) or {}
        else
                cache = {}
        end
end

-- 保存 JSON 缓存
local function save_cache()
        cache_path:parent():mkdir({ parents = true })
        local f = cache_path:open("w")
        f:write(vim.fn.json_encode(cache))
        f:close()
end

-- 项目根目录识别
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

        local current = Path:new(vim.fn.expand("%:p")):parent()

        for _, marker in ipairs(markers) do
                local found = current:find_upwards(function(dir)
                        return Path:new(dir, marker):exists()
                end)
                if found then
                        return Path:new(found):absolute()
                end
        end

        return current:absolute() -- fallback 为当前文件所在目录
end

-- make key（项目路径 + 功能名）
local function make_key(project_root, key)
        return project_root .. "::" .. key
end

-- run or cache
function M.run_or_cache(key)
        load_cache()
        local root = get_project_root()
        local id = make_key(root, key)

        if cache[id] then
                vim.cmd(cache[id])
        else
                vim.ui.input({ prompt = "Enter command for '" .. key .. "' in project:\n" .. root }, function(input)
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

-- 清除项目的缓存
function M.clear_current()
        load_cache()
        local root = get_project_root()

        vim.ui.input({ prompt = "Enter key to clear in project <" .. root .. ">: " }, function(key)
                if key and key ~= "" then
                        local id = make_key(root, key)
                        if cache[id] then
                                cache[id] = nil
                                save_cache()
                                print("✅ Cleared cache for key '" .. key .. "' in project: " .. root)
                        else
                                print("⚠️ No cache found for key '" .. key .. "' in project: " .. root)
                        end
                else
                        print("❌ No key entered.")
                end
        end)
end

-- 清除所有缓存
function M.clear_all()
        cache = {}
        save_cache()
        print("Cleared all project command cache.")
end

return M

--NOTE:
-- vim.api.nvim_create_user_command("FormatRun", function()
--   cmd_cache.run_or_cache("format")
-- end, {})
--
-- vim.api.nvim_create_user_command("RunCode", function()
--   cmd_cache.run_or_cache("runcode")
-- end, {})
--
-- vim.api.nvim_create_user_command("Clear", function()
--   cmd_cache.clear_current()
-- end, {})
--
-- vim.api.nvim_create_user_command("ClearAll", function()
--   cmd_cache.clear_all()
-- end, {})
