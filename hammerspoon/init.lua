local hk = require "hs.hotkey"
local lanuchOrFocusApp = require("app").lanuchOrFocusApp
local windowManager = require('window').windowManager


hk.bind({ 'ctrl', 'alt', 'cmd', 'shift' }, "q", windowManager("fullScreen"))
hk.bind({ 'ctrl', 'alt', 'cmd', 'shift' }, "d", windowManager("right"))
hk.bind({ 'ctrl', 'alt', 'cmd', 'shift' }, "a", windowManager("left"))
hk.bind({ 'ctrl', 'alt', 'cmd', 'shift' }, "w", windowManager("top"))
hk.bind({ 'ctrl', 'alt', 'cmd', 'shift' }, "s", windowManager("bottom"))

hk.bind({ 'ctrl', 'alt', 'cmd', 'shift' }, "u", lanuchOrFocusApp("Safari"))
hk.bind({ 'ctrl', 'alt', 'cmd', 'shift' }, "i", lanuchOrFocusApp("Alacritty"))
hk.bind({ 'ctrl', 'alt', 'cmd', 'shift' }, "o", lanuchOrFocusApp("Craft"))
hk.bind({ 'ctrl', 'alt', 'cmd', 'shift' }, "n", lanuchOrFocusApp("Visual Studio Code"))
hk.bind({ 'ctrl', 'cmd', 'shift' }, "right", lanuchOrFocusApp("WezTerm"))
hk.bind({ 'ctrl', 'cmd', 'shift' }, "down", lanuchOrFocusApp("Arc"))
