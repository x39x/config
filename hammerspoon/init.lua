local hk = require("hs.hotkey")
local lanuchOrFocusApp = require("app").lanuchOrFocusApp
local windowManager = require("window").windowManager
local FocusDesktop = require("app").FocusDesktop

-- window manager
hk.bind({ "ctrl", "alt", "cmd", "shift" }, "s", windowManager("fullScreen"))
hk.bind({ "ctrl", "cmd", "shift" }, "right", windowManager("right"))
hk.bind({ "ctrl", "cmd", "shift" }, "left", windowManager("left"))
hk.bind({ "ctrl", "cmd", "shift" }, "down", windowManager("bottom"))
hk.bind({ "ctrl", "cmd", "shift" }, "up", windowManager("top"))

-- lanuch or focue app
hk.bind({ "ctrl", "alt", "cmd", "shift" }, "f", lanuchOrFocusApp("Safari"))
hk.bind({ "ctrl", "alt", "cmd", "shift" }, "d", lanuchOrFocusApp("Alacritty"))
hk.bind({ "ctrl", "alt", "cmd", "shift" }, "x", lanuchOrFocusApp("Craft"))
hk.bind({ "ctrl", "alt", "cmd", "shift" }, "z", lanuchOrFocusApp("Preview"))
hk.bind({ "ctrl", "alt", "cmd", "shift" }, "r", FocusDesktop())
