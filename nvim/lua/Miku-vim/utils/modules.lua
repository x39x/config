--for Terminal
local MIKU = {}
local Terminal = require("toggleterm.terminal").Terminal
local btop = Terminal:new({ cmd = "btop", hidden = true })
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })


-- for run
local RUN = {
        c = function()
                vim.cmd("TermExec cmd=\"cd %:p:h && clang %:t -o %:t:r && ./%:t:r && rm %:t:r\"")
        end,

        -- cpp = function()
        --         vim.cmd("TermExec cmd=\"cd %:p:h && clang++ %:t -o %:t:r && ./%:t:r && rm %:t:r\"")
        -- end,

        --cpp 20
        cpp = function()
                vim.cmd(
                        "TermExec cmd=\"cd %:p:h && clang++ -std=c++20 -fmodules %:t -o %:t:r && ./%:t:r && rm %:t:r\"")
        end,

        lua = function()
                vim.cmd("TermExec cmd=\"cd %:p:h && lua %:t\"")
        end,

        python = function()
                vim.cmd("TermExec cmd=\"cd %:p:h && python3 %:t\"")
        end,

        rust = function()
                vim.cmd("TermExec cmd=\"cd %:p:h && cargo run\"")
        end
}


--NOTE: btop
MIKU.btop = function()
        btop:toggle()
end

--NOTE: lazygit
MIKU.lazygit = function()
        lazygit:toggle()
end

--NOTE: run
MIKU.run = function()
        --get current buffer filetype
        local ftp = vim.bo.filetype
        --RUN
        if RUN[ftp] ~= nil then
                RUN[ftp]()
        end
end

--NOTE: lsp rename
MIKU._lsprename = function(win)
        local new_name = vim.trim(vim.fn.getline('.'))
        vim.api.nvim_win_close(win, true)
        vim.cmd('stopinsert')
        vim.lsp.buf.rename(new_name)
end

MIKU.rename = function()
        local opts = {
                relative = 'cursor',
                row = 0,
                col = 0,
                width = 20,
                height = 1,
                style = 'minimal',
                border = 'rounded'
        }
        local buf = vim.api.nvim_create_buf(false, true)
        local win = vim.api.nvim_open_win(buf, true, opts)
        vim.cmd('startinsert')
        vim.api.nvim_buf_set_lines(buf, 0, -1, false, {})
        vim.api.nvim_buf_set_keymap(buf, 'i', '<esc>',
                '<cmd>stopinsert | close<CR>',
                { silent = true })
        --TODO:callback
        vim.api.nvim_buf_set_keymap(buf, 'i', '<CR>',
                string.format('<cmd>lua _MIKU._lsprename(%d)<CR>', win),
                { silent = true })
end

--NOTE: FZF zoxide
MIKU.fzf_zoxide = function()
        require 'fzf-lua'.fzf_exec("fd --type d | zoxide query -l", {
                actions = {
                        -- Use fzf-lua builtin actions or your own handler
                        ['default'] = function(selected)
                                vim.cmd("cd " .. selected[1])
                        end

                },
                winopts = {
                        height = 0.33, -- window height
                        width  = 0.45, -- window width
                        row    = 0.43, -- window row position (0=top, 1=bottom)
                        col    = 0.5,  -- window col position (0=left, 1=right)

                },
        })
end

--NOTE: lsp fzf_list or jump
MIKU.list_or_jump = function(action, opts)
        local params = vim.lsp.util.make_position_params(opts.winnr)
        local fzf_method = {
                ["textDocument/definition"] = function()
                        require('fzf-lua').lsp_definitions({ winopts = { split = 'belowright new' } })
                end,

                ["textDocument/typeDefinition"] = function()
                        require('fzf-lua').lsp_typedefs({ winopts = { split = 'belowright new' } })
                end,

                ["textDocument/implementation"] = function()
                        require('fzf-lua').lsp_implementations({ winopts = { split = 'belowright new' } })
                end,
        }
        vim.lsp.buf_request(opts.bufnr, action, params, function(err, result, ctx, _)
                if err then
                        vim.api.nvim_err_writeln("Error when executing " .. action .. " : " .. err.message)
                        return
                end
                local flattened_results = {}
                if result then
                        -- textDocument/definition can return Location or Location[]
                        if not vim.tbl_islist(result) then
                                flattened_results = { result }
                        end

                        vim.list_extend(flattened_results, result)
                end

                local offset_encoding = vim.lsp.get_client_by_id(ctx.client_id).offset_encoding

                if #flattened_results == 0 then
                        return
                elseif #flattened_results == 1 and opts.jump_type ~= "never" then
                        local uri = params.textDocument.uri
                        if uri ~= flattened_results[1].uri and uri ~= flattened_results[1].targetUri then
                                if opts.jump_type == "tab" then
                                        vim.cmd "tabedit"
                                elseif opts.jump_type == "split" then
                                        vim.cmd "new"
                                elseif opts.jump_type == "vsplit" then
                                        vim.cmd "vnew"
                                end
                        end

                        vim.lsp.util.jump_to_location(flattened_results[1], offset_encoding, opts.reuse_win)
                else
                        fzf_method[action]()
                end
        end)
end



_G._MIKU = MIKU







































-- Nui-Rename
-- local Input = require("nui.input")
-- local input = Input({
--         relative = "cursor",
--         position = {
--                 row = 1,
--                 col = 0,
--         },
--         size = 20,
--         border = {
--                 style = "rounded",
--                 text = {
--                         top = "[New name]",
--                         top_align = "center",
--                 },
--         },
--         win_options = {
--                 winhighlight = "Normal:Normal,FloatBorder:Normal",
--         },
-- }, {
--         prompt = "> ",
--         default_value = "",
--         on_close = function()
--                 print("Cancel!")
--         end,
--         on_submit = function(value)
--                 vim.lsp.buf.rename(value)
--                 print("Renamed to: " .. value)
--         end,
-- })
--
-- M.rename = function()
--         input:mount()
--         input:map("i", "<esc>", function()
--                 vim.cmd("stopinsert")
--                 input:unmount()
--         end, { noremap = true })
-- end
--
--
