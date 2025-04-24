local window = require("hs.window")
local M = {}
M.windowManager = function(size)
        return function()
                local win = window.focusedWindow()
                if win == nil then
                        return -- No focused window, do nothing
                end

                -- Handle fullScreen toggle
                if size == "fullScreen" then
                        win:setFullScreen(not win:isFullScreen())
                        return
                end

                --   - x: Horizontal starting position of the window's top-left corner (0 to 1 scale, 0 is far left, 1 is far right).
                --   - y: Vertical starting position of the window's top-left corner (0 to 1 scale, 0 is top, 1 is bottom).
                --   - width: The width of the window, as a proportion of the total screen width (0 to 1 scale).
                --   - height: The height of the window, as a proportion of the total screen height (0 to 1 scale).
                local winSize = {
                        top = { 0, 0, 1, 0.5 },
                        left = { 0, 0, 0.5, 1 },
                        right = { 0.5, 0, 0.5, 1 },
                        bottom = { 0, 0.5, 1, 0.5 },
                }
                win:moveToUnit(winSize[size])
        end
end

return M
