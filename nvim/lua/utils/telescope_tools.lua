local M = {}
local pickers = require("telescope.pickers")
local finders = require("telescope.finders")
local conf = require("telescope.config").values
local themes = require("telescope.themes")

local actions = require("telescope.actions")
local action_state = require("telescope.actions.state")

M.picker_theme = {
        single_dropdown = function(opts)
                opts = opts or {}
                opts.theme = "dropdown"
                opts.borderchars = {
                        prompt = { " ", "", "", " ", "", "", "", "" },
                        results = { "─", "", "─", "", "", "", "", "" },
                        preview = { "─", "", "", "", "", "", "", "" },
                }
                return opts
        end,

        simple_ivy = function(opts)
                opts = opts or {}
                opts.theme = "ivy"
                opts.borderchars = {
                        prompt = { "─", " ", " ", " ", "─", "─", " ", " " },
                        results = { " " },
                        preview = { "", "", "", " ", "", "", "", "" },
                }
                opts.layout_config = {
                        height = 0.4,
                        preview_width = 0.60,
                }
                opts.results_title = ""
                opts.preview_title = ""
                return opts
        end,
}
-- NOTE:  Custom Pickers
local create_mapping = function(prompt_bufnr, mapping_config)
        return function()
                local selection = action_state.get_selected_entry()

                -- if need keep insert mode
                actions._close(prompt_bufnr, mapping_config.keepinsert or false)
                mapping_config.action(selection)
        end
end
function M.custom_picker(opts)
        local shell = "/bin/sh"
        local theme = opts.theme or themes.get_ivy(M.picker_theme.simple_ivy())

        pickers.new(theme, {
                prompt_title = opts.title,
                finder = finders.new_oneshot_job({ shell, "-c", opts.cmd }, {
                        entry_maker = opts.entry_maker or function(line)
                                return { value = line, display = line, ordinal = line }
                        end,
                }),
                sorter = opts.sorter or conf.generic_sorter(),

                attach_mappings = function(prompt_bufnr, map)
                        -- Set default mapping '<cr>'
                        actions.select_default:replace(create_mapping(prompt_bufnr, opts.default_mappings))
                        -- Add extra mappings
                        if opts.extra_mappings then
                                for map_key, map_action in pairs(opts.extra_mappings) do
                                        map({ "i", "n" }, map_key, create_mapping(prompt_bufnr, map_action))
                                end
                        end

                        return true
                end,
        }):find()
end

M.move_left = function()
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Left>", true, false, true), "n", false)
end

M.move_right = function()
        vim.api.nvim_feedkeys(vim.api.nvim_replace_termcodes("<Right>", true, false, true), "n", false)
end

return M
