local utils = require("heirline.utils")

-- PLUG: buffers
local FileIcon = {
        init = function(self)
                local filename = self.filename
                local extension = vim.fn.fnamemodify(filename, ":e")
                self.icon, self.icon_color =
                        require("nvim-web-devicons").get_icon_color(filename, extension, { default = true })
        end,
        provider = function(self)
                return self.icon and ("   " .. self.icon .. " ")
        end,
        hl = function(self)
                return { fg = self.icon_color }
        end,
}

local TablineFileName = {
        provider = function(self)
                local filename = self.filename
                filename = filename == "" and "[No Name]" or vim.fn.fnamemodify(filename, ":t")
                return filename
        end,
        hl = function(self)
                return { bold = self.is_active or self.is_visible }
        end,
}

local TablineFileFlags = {
        {
                provider = function(self)
                        local buf = self.bufnr
                        local opts = { buf = buf }

                        local readonly = vim.api.nvim_get_option_value("readonly", opts)
                        local modifiable = vim.api.nvim_get_option_value("modifiable", opts)
                        local modified = vim.api.nvim_get_option_value("modified", opts)
                        local buftype = vim.api.nvim_get_option_value("buftype", opts)

                        if not modifiable or readonly then
                                return modified and "[] " or (buftype == "terminal" and "   " or "   ")
                        end

                        return modified and "[+] " or "    "
                end,
                hl = { fg = "green" },
        },
}

local BufferFileNameBlock = {
        init = function(self)
                self.filename = vim.api.nvim_buf_get_name(self.bufnr)
        end,
        hl = function(self)
                if self.is_active then
                        return "TabLineSel"
                else
                        return "TabLine"
                end
        end,
        on_click = {
                callback = function(_, minwid, _, button)
                        if button == "m" then -- close on mouse middle click
                                vim.schedule(function()
                                        vim.api.nvim_buf_delete(minwid, { force = false })
                                end)
                        else
                                vim.api.nvim_win_set_buf(0, minwid)
                        end
                end,
                minwid = function(self)
                        return self.bufnr
                end,
                name = "heirline_tabline_buffer_callback",
        },
        FileIcon,
        TablineFileName,
        TablineFileFlags,
}

local BufferLinePicker = {
        condition = function(self)
                return self._show_picker
        end,
        init = function(self)
                local chars = { "h", "j", "k", "g", "f", "d", "w", "e", "r", "u", "i", "o" }

                for _, c in ipairs(chars) do
                        if not self._picker_labels[c] then
                                self._picker_labels[c] = self.bufnr
                                self.label = c
                                return
                        end
                end

                math.randomseed(os.time())
                local fallback = chars[math.random(1, #chars)]
                self._picker_labels[fallback] = self.bufnr
                self.label = fallback
        end,
        provider = function(self)
                return self.label
        end,
        hl = { fg = "red", bold = true },
}

vim.keymap.set("n", "<leader>j", function()
        local tabline = require("heirline").tabline
        local buflist = tabline._buflist[1]
        buflist._picker_labels = {}
        buflist._show_picker = true
        vim.cmd.redrawtabline()
        local char = vim.fn.getcharstr()
        local bufnr = buflist._picker_labels[char]
        if bufnr then
                vim.api.nvim_win_set_buf(0, bufnr)
        end
        buflist._show_picker = false
        vim.cmd.redrawtabline()
end)

local BufferLine = utils.make_buflist({
        BufferFileNameBlock,
        BufferLinePicker,
}, { provider = "", hl = { fg = "gray" } }, { provider = "", hl = { fg = "gray" } })

-- PLUG: tab
local Tabpage = {
        provider = function(self)
                return " " .. "%" .. self.tabnr .. "T " .. self.tabpage .. " %T" .. " "
        end,
        hl = function(self)
                if not self.is_active then
                        return "TabLine"
                else
                        return "TabLineSel"
                end
        end,
}
local TabPages = {
        -- only show this component if there's 2 or more tabpages
        condition = function()
                return #vim.api.nvim_list_tabpages() >= 2
        end,
        { provider = "%=" },
        utils.make_tablist(Tabpage),
        { provider = "  " },
}

return {
        BufferLine,
        TabPages,
}
