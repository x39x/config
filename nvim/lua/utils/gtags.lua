local M
M.goto_definition = function()
        local word = vim.fn.expand("<cword>")

        vim.system({ "global", "-ax", word }, { text = true }, function(result)
                if result.code ~= 0 or not result.stdout then
                        vim.notify("Definition not found for: " .. word, vim.log.levels.WARN)
                        return
                end

                local output = vim.split(result.stdout, "\n", { trimempty = true })

                if #output == 0 then
                        vim.notify("Definition not found for: " .. word, vim.log.levels.WARN)
                        return
                end

                local first_result = output[1]
                local parts = vim.split(first_result, "%s+")

                local file = parts[3]
                local line = parts[2]

                if file and line then
                        vim.notify("Opening: " .. file .. " Line: " .. line, vim.log.levels.INFO)
                        vim.cmd("edit " .. vim.fn.fnameescape(file))
                        vim.cmd(":" .. line)
                else
                        vim.notify("Invalid result: " .. first_result, vim.log.levels.WARN)
                end
        end)
end

M.goto_references = function()
        local word = vim.fn.expand("<cword>")
        vim.system({ "global", "-axr", word }, { text = true }, function(result)
                if result.code ~= 0 or not result.stdout then
                        vim.notify("Error! gtags.lua:39" .. word, vim.log.levels.WARN)
                        return
                end

                local output = vim.split(result.stdout, "\n", { trimempty = true })

                if #output == 0 then
                        vim.notify("References not found for: " .. word, vim.log.levels.WARN)
                        return
                end
        end)
        --TODO:
        -- send to telescope
end
